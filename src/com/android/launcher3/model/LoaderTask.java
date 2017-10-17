// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.util.LooperIdleLock;
import java.util.concurrent.CancellationException;
import java.util.Set;
import java.util.HashSet;
import com.android.launcher3.util.ContentWriter;
import android.content.Intent;
import com.android.launcher3.InvariantDeviceProfile;
import android.net.Uri;
import android.database.Cursor;
import android.content.ContentResolver;
import android.content.Context;
import android.content.BroadcastReceiver;
import android.os.Handler;
import android.content.IntentFilter;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.ItemInfoWithIcon;
import java.util.Comparator;
import java.util.Collections;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.FolderInfo;
import android.util.MutableInt;
import com.android.launcher3.InstallShortcutReceiver;
import java.io.Closeable;
import com.android.launcher3.LauncherAppWidgetInfo;
import com.android.launcher3.util.ComponentKey;
import android.content.ComponentName;
import com.android.launcher3.util.Provider;
import com.android.launcher3.graphics.LauncherIcons;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.logging.FileLog;
import android.text.TextUtils;
import android.os.Process;
import com.android.launcher3.folder.FolderIconPreviewVerifier;
import com.android.launcher3.shortcuts.ShortcutKey;
import android.util.LongSparseArray;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import java.util.HashMap;
import java.util.Collection;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.LauncherSettings$Settings;
import android.util.Log;
import com.android.launcher3.provider.ImportDataTask;
import com.android.launcher3.util.MultiHashMap;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.PackageManagerHelper;
import java.util.Iterator;
import java.util.List;
import java.util.ArrayList;
import com.android.launcher3.compat.PackageInstallerCompat$PackageInstallInfo;
import android.content.pm.PackageInstaller$SessionInfo;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.ManagedProfileHeuristic;
import com.android.launcher3.AppInfo;
import android.content.pm.LauncherActivityInfo;
import android.os.UserHandle;
import android.appwidget.AppWidgetProviderInfo;
import com.android.launcher3.compat.UserManagerCompat;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import com.android.launcher3.compat.PackageInstallerCompat;
import com.android.launcher3.compat.LauncherAppsCompat;
import com.android.launcher3.IconCache;
import com.android.launcher3.AllAppsList;
import com.android.launcher3.compat.AppWidgetManagerCompat;
import com.android.launcher3.LauncherAppState;

public class LoaderTask implements Runnable
{
    private final LauncherAppState mApp;
    private final AppWidgetManagerCompat mAppWidgetManager;
    private final AllAppsList mBgAllAppsList;
    private final BgDataModel mBgDataModel;
    private final IconCache mIconCache;
    private final LauncherAppsCompat mLauncherApps;
    private final PackageInstallerCompat mPackageInstaller;
    private final LoaderResults mResults;
    private final DeepShortcutManager mShortcutManager;
    private boolean mStopped;
    private final UserManagerCompat mUserManager;
    
    public LoaderTask(final LauncherAppState mApp, final AllAppsList mBgAllAppsList, final BgDataModel mBgDataModel, final LoaderResults mResults) {
        this.mApp = mApp;
        this.mBgAllAppsList = mBgAllAppsList;
        this.mBgDataModel = mBgDataModel;
        this.mResults = mResults;
        this.mLauncherApps = LauncherAppsCompat.getInstance(this.mApp.getContext());
        this.mUserManager = UserManagerCompat.getInstance(this.mApp.getContext());
        this.mShortcutManager = DeepShortcutManager.getInstance(this.mApp.getContext());
        this.mPackageInstaller = PackageInstallerCompat.getInstance(this.mApp.getContext());
        this.mAppWidgetManager = AppWidgetManagerCompat.getInstance(this.mApp.getContext());
        this.mIconCache = this.mApp.getIconCache();
    }
    
    public static boolean isValidProvider(final AppWidgetProviderInfo appWidgetProviderInfo) {
        boolean b = false;
        if (appWidgetProviderInfo != null && appWidgetProviderInfo.provider != null && appWidgetProviderInfo.provider.getPackageName() != null) {
            b = true;
        }
        return b;
    }
    
    private void loadAllApps() {
        final List userProfiles = this.mUserManager.getUserProfiles();
        this.mBgAllAppsList.clear();
        for (final UserHandle userHandle : userProfiles) {
            final List activityList = this.mLauncherApps.getActivityList(null, userHandle);
            if (activityList == null || activityList.isEmpty()) {
                return;
            }
            final boolean quietModeEnabled = this.mUserManager.isQuietModeEnabled(userHandle);
            for (int i = 0; i < activityList.size(); ++i) {
                final LauncherActivityInfo launcherActivityInfo = activityList.get(i);
                this.mBgAllAppsList.add(new AppInfo(launcherActivityInfo, userHandle, quietModeEnabled), launcherActivityInfo);
            }
            ManagedProfileHeuristic.onAllAppsLoaded(this.mApp.getContext(), activityList, userHandle);
        }
        if (FeatureFlags.LAUNCHER3_PROMISE_APPS_IN_ALL_APPS) {
            final Iterator iterator2 = this.mPackageInstaller.getAllVerifiedSessions().iterator();
            while (iterator2.hasNext()) {
                this.mBgAllAppsList.addPromiseApp(this.mApp.getContext(), PackageInstallerCompat$PackageInstallInfo.fromInstallingState(iterator2.next()));
            }
        }
        this.mBgAllAppsList.added = new ArrayList();
    }
    
    private void loadDeepShortcuts() {
        this.mBgDataModel.deepShortcutMap.clear();
        this.mBgDataModel.hasShortcutHostPermission = this.mShortcutManager.hasHostPermission();
        if (this.mBgDataModel.hasShortcutHostPermission) {
            for (final UserHandle userHandle : this.mUserManager.getUserProfiles()) {
                if (this.mUserManager.isUserUnlocked(userHandle)) {
                    this.mBgDataModel.updateDeepShortcutMap(null, userHandle, this.mShortcutManager.queryForAllShortcuts(userHandle));
                }
            }
        }
    }
    
    private void loadWorkspace() {
        Context context = null;
        ContentResolver contentResolver = null;
        boolean bootCompleted = false;
        MultiHashMap multiHashMap = null;
        HashMap<Object, ShortcutInfoCompat> hashMap = null;
        LoaderCursor loaderCursor = null;
    Label_0673_Outer:
        while (true) {
            context = this.mApp.getContext();
            contentResolver = context.getContentResolver();
            final PackageManagerHelper packageManagerHelper = new PackageManagerHelper(context);
            final boolean safeMode = packageManagerHelper.isSafeMode();
            bootCompleted = Utilities.isBootCompleted();
            multiHashMap = new MultiHashMap();
            int n = 0;
            Object o;
            HashMap updateAndGetActiveSessionCache;
            ArrayList workspaceScreens;
            Cursor query = null;
            Uri content_URI;
            boolean b = false;
            LongSparseArray allUsers;
            Iterator<UserHandle> iterator;
            String s;
            LoaderCursor loaderCursor2;
            int columnIndexOrThrow;
            int columnIndexOrThrow2;
            int columnIndexOrThrow3;
            int columnIndexOrThrow4;
            int columnIndexOrThrow5;
            int columnIndexOrThrow6;
            LongSparseArray longSparseArray;
            LongSparseArray longSparseArray2;
            UserHandle userHandle;
            long serialNumberForUser;
            List queryForPinnedShortcuts;
            boolean b2;
            InvariantDeviceProfile invariantDeviceProfile = null;
            FolderIconPreviewVerifier folderIconPreviewVerifier;
            LoaderCursor loaderCursor3;
            UserHandle user;
            UserHandle user2;
            String s2;
            LoaderCursor loaderCursor4;
            String s3;
            boolean b3;
            LauncherAppState launcherAppState = null;
            Intent intent = null;
            Object value;
            Boolean b4;
            int n2 = 0;
            ComponentName component;
            String s4;
            boolean packageEnabledForProfile;
            String s5;
            StringBuilder append;
            boolean b5;
            ShortcutInfo shortcutInfo;
            int n3;
            Intent intent2;
            ShortcutInfo shortcutInfo2;
            LoaderCursor loaderCursor5;
            Integer value2;
            Integer n4;
            ContentWriter put;
            StringBuilder append2;
            ContentWriter updater;
            StringBuilder append3;
            String s6;
            StringBuilder append4;
            StringBuilder append5;
            ShortcutKey fromIntent;
            Object value3;
            Boolean b6;
            Object value4;
            ShortcutInfoCompat shortcutInfoCompat2;
            String package1;
            ShortcutInfo loadSimpleShortcut;
            ShortcutInfo loadSimpleShortcut2 = null;
            int n5 = 0;
            FolderInfo orMakeFolder;
            LoaderCursor loaderCursor6;
            int n6;
            int int1;
            String string;
            ComponentName unflattenFromString;
            boolean b7;
            boolean b8;
            AppWidgetManagerCompat mAppWidgetManager;
            ComponentKey componentKey;
            LauncherAppState launcherAppState2;
            AppWidgetProviderInfo value5;
            AppWidgetProviderInfo appWidgetProviderInfo;
            boolean validProvider;
            StringBuilder append6;
            LauncherAppWidgetInfo launcherAppWidgetInfo;
            int restoreStatus;
            LauncherAppWidgetInfo launcherAppWidgetInfo2 = null;
            LoaderCursor loaderCursor7;
            LoaderCursor loaderCursor8;
            String s7;
            StringBuilder append7;
            LauncherAppWidgetInfo launcherAppWidgetInfo3;
            Integer value6;
            Integer n7;
            int intValue;
            StringBuilder append8;
            ComponentName providerName;
            String flattenToString;
            int restoreStatus2;
            ContentWriter put2;
            String s8;
            int restoreStatus3;
            ContentWriter put3;
            ComponentName providerName2;
            String packageName;
            PackageItemInfo pendingItemInfo;
            LauncherAppWidgetInfo launcherAppWidgetInfo4;
            PackageItemInfo pendingItemInfo2;
            IconCache mIconCache = null;
            Label_1422_Outer:Label_2486_Outer:
            while (true) {
                Label_4670: {
                    while (true) {
                        Label_1422:Label_3017_Outer:
                        while (true) {
                            Label_4648: {
                                while (true) {
                                    Label_3752: {
                                    Label_0812_Outer:
                                        while (true) {
                                            while (true) {
                                                try {
                                                    ImportDataTask.performImportIfPossible(context);
                                                    if (n == 0 && GridSizeMigrationTask.ENABLED && (GridSizeMigrationTask.migrateGridIfNeeded(context) ^ true)) {
                                                        n = 1;
                                                    }
                                                    if (n != 0) {
                                                        Log.d("LoaderTask", "loadWorkspace: resetting launcher database");
                                                        LauncherSettings$Settings.call(contentResolver, "create_empty_db");
                                                    }
                                                    o = "loadWorkspace: loading default favorites";
                                                    Log.d("LoaderTask", (String)o);
                                                    LauncherSettings$Settings.call(contentResolver, "load_default_favorites");
                                                    // monitorenter(mBgDataModel = this.mBgDataModel)
                                                    try {
                                                        this.mBgDataModel.clear();
                                                        updateAndGetActiveSessionCache = this.mPackageInstaller.updateAndGetActiveSessionCache();
                                                        workspaceScreens = this.mBgDataModel.workspaceScreens;
                                                        o = LauncherModel.loadWorkspaceScreensDb(context);
                                                        workspaceScreens.addAll((Collection)o);
                                                        hashMap = new HashMap<Object, ShortcutInfoCompat>();
                                                        loaderCursor = new LoaderCursor(query, (LauncherAppState)o);
                                                        content_URI = LauncherSettings$Favorites.CONTENT_URI;
                                                        o = null;
                                                        b = false;
                                                        allUsers = null;
                                                        iterator = null;
                                                        query = contentResolver.query(content_URI, (String[])null, (String)null, (String[])null, (String)null);
                                                        o = this.mApp;
                                                        o = null;
                                                        s = "appWidgetId";
                                                        loaderCursor2 = loaderCursor;
                                                        try {
                                                            columnIndexOrThrow = loaderCursor2.getColumnIndexOrThrow(s);
                                                            columnIndexOrThrow2 = loaderCursor.getColumnIndexOrThrow("appWidgetProvider");
                                                            columnIndexOrThrow3 = loaderCursor.getColumnIndexOrThrow("spanX");
                                                            columnIndexOrThrow4 = loaderCursor.getColumnIndexOrThrow("spanY");
                                                            columnIndexOrThrow5 = loaderCursor.getColumnIndexOrThrow("rank");
                                                            columnIndexOrThrow6 = loaderCursor.getColumnIndexOrThrow("options");
                                                            allUsers = loaderCursor.allUsers;
                                                            longSparseArray = new LongSparseArray();
                                                            longSparseArray2 = new LongSparseArray();
                                                            iterator = (Iterator<UserHandle>)this.mUserManager.getUserProfiles().iterator();
                                                            while (iterator.hasNext()) {
                                                                userHandle = iterator.next();
                                                                serialNumberForUser = this.mUserManager.getSerialNumberForUser(userHandle);
                                                                allUsers.put(serialNumberForUser, (Object)userHandle);
                                                                b = this.mUserManager.isQuietModeEnabled(userHandle);
                                                                longSparseArray.put(serialNumberForUser, (Object)b);
                                                                b = this.mUserManager.isUserUnlocked(userHandle);
                                                                if (!b) {
                                                                    break Label_4670;
                                                                }
                                                                queryForPinnedShortcuts = this.mShortcutManager.queryForPinnedShortcuts(null, userHandle);
                                                                if (this.mShortcutManager.wasLastCallSuccess()) {
                                                                    for (final ShortcutInfoCompat shortcutInfoCompat : queryForPinnedShortcuts) {
                                                                        hashMap.put(ShortcutKey.fromInfo(shortcutInfoCompat), shortcutInfoCompat);
                                                                    }
                                                                    break Label_4670;
                                                                }
                                                                b2 = false;
                                                                longSparseArray2.put(serialNumberForUser, (Object)b2);
                                                            }
                                                            folderIconPreviewVerifier = new FolderIconPreviewVerifier(invariantDeviceProfile);
                                                            invariantDeviceProfile = this.mApp.getInvariantDeviceProfile();
                                                            while (!this.mStopped && loaderCursor.moveToNext()) {
                                                                loaderCursor3 = loaderCursor;
                                                                user = loaderCursor3.user;
                                                                user2 = user;
                                                                if (user2 == null) {
                                                                    s2 = "User has been deleted";
                                                                    loaderCursor4 = loaderCursor;
                                                                    s3 = s2;
                                                                    loaderCursor4.markDeleted(s3);
                                                                }
                                                                else {
                                                                    b3 = false;
                                                                    while (true) {
                                                                        switch (loaderCursor.itemType) {
                                                                            default: {
                                                                                launcherAppState = (LauncherAppState)o;
                                                                                break;
                                                                            }
                                                                            case 0:
                                                                            case 1:
                                                                            case 6: {
                                                                                intent = loaderCursor.parseIntent();
                                                                                if (intent == null) {
                                                                                    loaderCursor.markDeleted("Invalid or null intent");
                                                                                    continue Label_0673_Outer;
                                                                                }
                                                                            }
                                                                            case 2: {
                                                                                Label_2654: {
                                                                                    break Label_2654;
                                                                                    value = longSparseArray.get(loaderCursor.serialNumber);
                                                                                    try {
                                                                                        b4 = (Boolean)value;
                                                                                        try {
                                                                                            if (b4) {
                                                                                                n2 = 8;
                                                                                            }
                                                                                            else {
                                                                                                n2 = 0;
                                                                                            }
                                                                                            component = intent.getComponent();
                                                                                            if (component == null) {
                                                                                                s4 = intent.getPackage();
                                                                                            }
                                                                                            else {
                                                                                                s4 = component.getPackageName();
                                                                                            }
                                                                                            if (!Process.myUserHandle().equals((Object)loaderCursor.user)) {
                                                                                                if (loaderCursor.itemType == 1) {
                                                                                                    loaderCursor.markDeleted("Legacy shortcuts are only allowed for default user");
                                                                                                    continue Label_0673_Outer;
                                                                                                }
                                                                                                if (loaderCursor.restoreFlag != 0) {
                                                                                                    loaderCursor.markDeleted("Restore from managed profile not supported");
                                                                                                    continue Label_0673_Outer;
                                                                                                }
                                                                                            }
                                                                                            if (TextUtils.isEmpty((CharSequence)s4) && loaderCursor.itemType != 1) {
                                                                                                loaderCursor.markDeleted("Only legacy shortcuts can have null package");
                                                                                                continue Label_0673_Outer;
                                                                                            }
                                                                                            Label_1631: {
                                                                                                if (TextUtils.isEmpty((CharSequence)s4)) {
                                                                                                    break Label_1631;
                                                                                                }
                                                                                                packageEnabledForProfile = this.mLauncherApps.isPackageEnabledForProfile(s4, loaderCursor.user);
                                                                                            Label_1222_Outer:
                                                                                                while (true) {
                                                                                                    Label_1641: {
                                                                                                        if (component != null && packageEnabledForProfile) {
                                                                                                            if (!this.mLauncherApps.isActivityEnabledForProfile(component, loaderCursor.user)) {
                                                                                                                break Label_1641;
                                                                                                            }
                                                                                                            loaderCursor.markRestored();
                                                                                                        }
                                                                                                    Label_1338_Outer:
                                                                                                        while (true) {
                                                                                                        Label_1386_Outer:
                                                                                                            while (true) {
                                                                                                                if (TextUtils.isEmpty((CharSequence)s4) || !(packageEnabledForProfile ^ true)) {
                                                                                                                    break Label_1338;
                                                                                                                }
                                                                                                                Label_1933: {
                                                                                                                    if (loaderCursor.restoreFlag == 0) {
                                                                                                                        break Label_1933;
                                                                                                                    }
                                                                                                                    s5 = "LoaderTask";
                                                                                                                    try {
                                                                                                                        append = new StringBuilder().append("package not yet restored: ").append(s4);
                                                                                                                        try {
                                                                                                                            FileLog.d(s5, append.toString());
                                                                                                                            Label_1827: {
                                                                                                                                if (!loaderCursor.hasRestoreFlag(8)) {
                                                                                                                                    break Label_1827;
                                                                                                                                }
                                                                                                                                if (packageEnabledForProfile) {
                                                                                                                                    loaderCursor.markRestored();
                                                                                                                                }
                                                                                                                                Label_2114: {
                                                                                                                                    if (loaderCursor.isOnWorkspaceOrHotseat()) {
                                                                                                                                        break Label_2114;
                                                                                                                                    }
                                                                                                                                    b5 = (folderIconPreviewVerifier.isItemInPreview(loaderCursor.getInt(columnIndexOrThrow5)) ^ true);
                                                                                                                                    while (true) {
                                                                                                                                        Label_2123: {
                                                                                                                                            if (loaderCursor.restoreFlag == 0) {
                                                                                                                                                break Label_2123;
                                                                                                                                            }
                                                                                                                                            shortcutInfo = loaderCursor.getRestoredItemInfo(intent);
                                                                                                                                            n3 = n2;
                                                                                                                                            intent2 = intent;
                                                                                                                                            Label_2634: {
                                                                                                                                                if (shortcutInfo == null) {
                                                                                                                                                    break Label_2634;
                                                                                                                                                }
                                                                                                                                                loaderCursor.applyCommonProperties(shortcutInfo);
                                                                                                                                                shortcutInfo2 = shortcutInfo;
                                                                                                                                                try {
                                                                                                                                                    shortcutInfo2.intent = intent2;
                                                                                                                                                    loaderCursor5 = loaderCursor;
                                                                                                                                                    try {
                                                                                                                                                        shortcutInfo.rank = loaderCursor5.getInt(columnIndexOrThrow5);
                                                                                                                                                        shortcutInfo.spanX = 1;
                                                                                                                                                        shortcutInfo.spanY = 1;
                                                                                                                                                        shortcutInfo.isDisabled |= n3;
                                                                                                                                                        if (safeMode && (Utilities.isSystemApp(context, intent2) ^ true)) {
                                                                                                                                                            shortcutInfo.isDisabled |= 0x1;
                                                                                                                                                        }
                                                                                                                                                        Label_1604: {
                                                                                                                                                            if (loaderCursor.restoreFlag == 0 || !(TextUtils.isEmpty((CharSequence)s4) ^ true)) {
                                                                                                                                                                break Label_1604;
                                                                                                                                                            }
                                                                                                                                                            value2 = updateAndGetActiveSessionCache.get(s4);
                                                                                                                                                            try {
                                                                                                                                                                n4 = value2;
                                                                                                                                                                Label_2614: {
                                                                                                                                                                    if (n4 == null) {
                                                                                                                                                                        break Label_2614;
                                                                                                                                                                    }
                                                                                                                                                                    shortcutInfo.setInstallProgress(n4);
                                                                                                                                                                    loaderCursor.checkAndAddItem(shortcutInfo, this.mBgDataModel);
                                                                                                                                                                    launcherAppState = (LauncherAppState)o;
                                                                                                                                                                    break;
                                                                                                                                                                    loaderCursor.restoreFlag = 0;
                                                                                                                                                                    put = loaderCursor.updater().put("intent", intent.toUri(0));
                                                                                                                                                                    try {
                                                                                                                                                                        put.commit();
                                                                                                                                                                        intent.getComponent();
                                                                                                                                                                        continue Label_1338_Outer;
                                                                                                                                                                        Label_1771: {
                                                                                                                                                                            try {
                                                                                                                                                                                append2 = new StringBuilder().append("Invalid component removed: ").append(component);
                                                                                                                                                                                try {
                                                                                                                                                                                    loaderCursor.markDeleted(append2.toString());
                                                                                                                                                                                    continue Label_0673_Outer;
                                                                                                                                                                                    loaderCursor.restoreFlag |= 0x8;
                                                                                                                                                                                    updater = loaderCursor.updater();
                                                                                                                                                                                    try {
                                                                                                                                                                                        updater.commit();
                                                                                                                                                                                        continue Label_1386_Outer;
                                                                                                                                                                                        Label_1880: {
                                                                                                                                                                                            try {
                                                                                                                                                                                                append3 = new StringBuilder().append("Unrestored app removed: ").append(s4);
                                                                                                                                                                                                try {
                                                                                                                                                                                                    loaderCursor.markDeleted(append3.toString());
                                                                                                                                                                                                    continue Label_0673_Outer;
                                                                                                                                                                                                    // iftrue(Label_1972:, !packageManagerHelper.isAppOnSdcard(s4, loaderCursor.user))
                                                                                                                                                                                                    n2 |= 0x2;
                                                                                                                                                                                                    b3 = true;
                                                                                                                                                                                                    continue Label_1386_Outer;
                                                                                                                                                                                                    s6 = "LoaderTask";
                                                                                                                                                                                                    try {
                                                                                                                                                                                                        append4 = new StringBuilder().append("Missing pkg, will check later: ").append(s4);
                                                                                                                                                                                                        try {
                                                                                                                                                                                                            Log.d(s6, append4.toString());
                                                                                                                                                                                                            multiHashMap.addToList(loaderCursor.user, s4);
                                                                                                                                                                                                            b3 = true;
                                                                                                                                                                                                            continue Label_1386_Outer;
                                                                                                                                                                                                            Label_2064: {
                                                                                                                                                                                                                try {
                                                                                                                                                                                                                    append5 = new StringBuilder().append("Invalid package removed: ").append(s4);
                                                                                                                                                                                                                    try {
                                                                                                                                                                                                                        loaderCursor.markDeleted(append5.toString());
                                                                                                                                                                                                                        continue Label_0673_Outer;
                                                                                                                                                                                                                        shortcutInfo = loaderCursor.getAppShortcutInfo(intent, b3, b5);
                                                                                                                                                                                                                        n3 = n2;
                                                                                                                                                                                                                        intent2 = intent;
                                                                                                                                                                                                                        continue Label_1422;
                                                                                                                                                                                                                        // iftrue(Label_2434:, loaderCursor.itemType != 6)
                                                                                                                                                                                                                        while (true) {
                                                                                                                                                                                                                            fromIntent = ShortcutKey.fromIntent(intent, loaderCursor.user);
                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                value3 = longSparseArray2.get(loaderCursor.serialNumber);
                                                                                                                                                                                                                                try {
                                                                                                                                                                                                                                    b6 = (Boolean)value3;
                                                                                                                                                                                                                                    try {
                                                                                                                                                                                                                                        Label_2395: {
                                                                                                                                                                                                                                            if (!b6) {
                                                                                                                                                                                                                                                break Label_2395;
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                            value4 = hashMap.get(fromIntent);
                                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                                shortcutInfoCompat2 = (ShortcutInfoCompat)value4;
                                                                                                                                                                                                                                                if (shortcutInfoCompat2 == null) {
                                                                                                                                                                                                                                                    loaderCursor.markDeleted("Pinned shortcut not found");
                                                                                                                                                                                                                                                    continue Label_0673_Outer;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                shortcutInfo = new ShortcutInfo(shortcutInfoCompat2, context);
                                                                                                                                                                                                                                                shortcutInfo.iconBitmap = LauncherIcons.createShortcutIcon(shortcutInfoCompat2, context, true, new LoaderTask$1(this, loaderCursor, shortcutInfo));
                                                                                                                                                                                                                                                package1 = shortcutInfoCompat2.getPackage();
                                                                                                                                                                                                                                                try {
                                                                                                                                                                                                                                                    if (packageManagerHelper.isAppSuspended(package1, shortcutInfo.user)) {
                                                                                                                                                                                                                                                        shortcutInfo.isDisabled |= 0x4;
                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                    intent2 = shortcutInfo.intent;
                                                                                                                                                                                                                                                    n3 = n2;
                                                                                                                                                                                                                                                    continue Label_1422;
                                                                                                                                                                                                                                                    loadSimpleShortcut = loaderCursor.loadSimpleShortcut();
                                                                                                                                                                                                                                                    try {
                                                                                                                                                                                                                                                        loadSimpleShortcut.isDisabled |= 0x20;
                                                                                                                                                                                                                                                        shortcutInfo = loadSimpleShortcut;
                                                                                                                                                                                                                                                        n3 = n2;
                                                                                                                                                                                                                                                        intent2 = intent;
                                                                                                                                                                                                                                                        continue Label_1422;
                                                                                                                                                                                                                                                        Label_2434: {
                                                                                                                                                                                                                                                            loadSimpleShortcut2 = loaderCursor.loadSimpleShortcut();
                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                        try {
                                                                                                                                                                                                                                                            if (!TextUtils.isEmpty((CharSequence)s4)) {
                                                                                                                                                                                                                                                                if (!packageManagerHelper.isAppSuspended(s4, loaderCursor.user)) {
                                                                                                                                                                                                                                                                    break Label_1422;
                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                n5 = (n2 | 0x4);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else {
                                                                                                                                                                                                                                                                n5 = n2;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if (intent.getAction() == null || intent.getCategories() == null || !intent.getAction().equals("android.intent.action.MAIN")) {
                                                                                                                                                                                                                                                                intent2 = intent;
                                                                                                                                                                                                                                                                shortcutInfo = loadSimpleShortcut2;
                                                                                                                                                                                                                                                                n3 = n5;
                                                                                                                                                                                                                                                                continue Label_1422;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if (intent.getCategories().contains("android.intent.category.LAUNCHER")) {
                                                                                                                                                                                                                                                                intent.addFlags(270532608);
                                                                                                                                                                                                                                                                intent2 = intent;
                                                                                                                                                                                                                                                                shortcutInfo = loadSimpleShortcut2;
                                                                                                                                                                                                                                                                n3 = n5;
                                                                                                                                                                                                                                                                continue Label_1422;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            break Label_4648;
                                                                                                                                                                                                                                                            orMakeFolder = this.mBgDataModel.findOrMakeFolder(loaderCursor.id);
                                                                                                                                                                                                                                                            loaderCursor.applyCommonProperties(orMakeFolder);
                                                                                                                                                                                                                                                            orMakeFolder.title = loaderCursor.getString(loaderCursor.titleIndex);
                                                                                                                                                                                                                                                            orMakeFolder.spanX = 1;
                                                                                                                                                                                                                                                            orMakeFolder.spanY = 1;
                                                                                                                                                                                                                                                            loaderCursor6 = loaderCursor;
                                                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                                                orMakeFolder.options = loaderCursor6.getInt(columnIndexOrThrow6);
                                                                                                                                                                                                                                                                loaderCursor.markRestored();
                                                                                                                                                                                                                                                                loaderCursor.checkAndAddItem(orMakeFolder, this.mBgDataModel);
                                                                                                                                                                                                                                                                launcherAppState = (LauncherAppState)o;
                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                // iftrue(Label_3024:, loaderCursor.itemType != 5)
                                                                                                                                                                                                                                                                n6 = 1;
                                                                                                                                                                                                                                                                int1 = loaderCursor.getInt(columnIndexOrThrow);
                                                                                                                                                                                                                                                                string = loaderCursor.getString(columnIndexOrThrow2);
                                                                                                                                                                                                                                                                try {
                                                                                                                                                                                                                                                                    unflattenFromString = ComponentName.unflattenFromString(string);
                                                                                                                                                                                                                                                                    b7 = (loaderCursor.hasRestoreFlag(1) ^ true);
                                                                                                                                                                                                                                                                    b8 = (loaderCursor.hasRestoreFlag(2) ^ true);
                                                                                                                                                                                                                                                                    Label_2883: {
                                                                                                                                                                                                                                                                        if (o != null) {
                                                                                                                                                                                                                                                                            break Label_2883;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        mAppWidgetManager = this.mAppWidgetManager;
                                                                                                                                                                                                                                                                        try {
                                                                                                                                                                                                                                                                            o = mAppWidgetManager.getAllProvidersMap();
                                                                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                                                                try {
                                                                                                                                                                                                                                                                                    componentKey = new ComponentKey(ComponentName.unflattenFromString(string), loaderCursor.user);
                                                                                                                                                                                                                                                                                    launcherAppState2 = (LauncherAppState)o;
                                                                                                                                                                                                                                                                                    try {
                                                                                                                                                                                                                                                                                        value5 = ((HashMap<K, AppWidgetProviderInfo>)launcherAppState2).get(componentKey);
                                                                                                                                                                                                                                                                                        try {
                                                                                                                                                                                                                                                                                            appWidgetProviderInfo = value5;
                                                                                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                                                                                validProvider = isValidProvider(appWidgetProviderInfo);
                                                                                                                                                                                                                                                                                                Label_3039: {
                                                                                                                                                                                                                                                                                                    if (safeMode || (n6 ^ 0x1) == 0x0 || !b8 || !(validProvider ^ true)) {
                                                                                                                                                                                                                                                                                                        break Label_3039;
                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                    try {
                                                                                                                                                                                                                                                                                                        append6 = new StringBuilder().append("Deleting widget that isn't installed anymore: ").append(appWidgetProviderInfo);
                                                                                                                                                                                                                                                                                                        try {
                                                                                                                                                                                                                                                                                                            loaderCursor.markDeleted(append6.toString());
                                                                                                                                                                                                                                                                                                            launcherAppState = (LauncherAppState)o;
                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                            // iftrue(Label_3223:, !validProvider)
                                                                                                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                                                                                                launcherAppWidgetInfo = new LauncherAppWidgetInfo(int1, appWidgetProviderInfo.provider);
                                                                                                                                                                                                                                                                                                                restoreStatus = (loaderCursor.restoreFlag & 0xFFFFFFF7 & 0xFFFFFFFD);
                                                                                                                                                                                                                                                                                                                if (!b8 && b7) {
                                                                                                                                                                                                                                                                                                                    restoreStatus |= 0x4;
                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                launcherAppWidgetInfo.restoreStatus = restoreStatus;
                                                                                                                                                                                                                                                                                                                launcherAppWidgetInfo2 = launcherAppWidgetInfo;
                                                                                                                                                                                                                                                                                                                while (true) {
                                                                                                                                                                                                                                                                                                                    if (launcherAppWidgetInfo2.hasRestoreFlag(32)) {
                                                                                                                                                                                                                                                                                                                        launcherAppWidgetInfo2.bindOptions = loaderCursor.parseIntent();
                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                    loaderCursor.applyCommonProperties(launcherAppWidgetInfo2);
                                                                                                                                                                                                                                                                                                                    loaderCursor7 = loaderCursor;
                                                                                                                                                                                                                                                                                                                    try {
                                                                                                                                                                                                                                                                                                                        launcherAppWidgetInfo2.spanX = loaderCursor7.getInt(columnIndexOrThrow3);
                                                                                                                                                                                                                                                                                                                        loaderCursor8 = loaderCursor;
                                                                                                                                                                                                                                                                                                                        try {
                                                                                                                                                                                                                                                                                                                            launcherAppWidgetInfo2.spanY = loaderCursor8.getInt(columnIndexOrThrow4);
                                                                                                                                                                                                                                                                                                                            launcherAppWidgetInfo2.user = loaderCursor.user;
                                                                                                                                                                                                                                                                                                                            if (!loaderCursor.isOnWorkspaceOrHotseat()) {
                                                                                                                                                                                                                                                                                                                                loaderCursor.markDeleted("Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!");
                                                                                                                                                                                                                                                                                                                                continue Label_0725;
                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                            Label_3544: {
                                                                                                                                                                                                                                                                                                                                break Label_3544;
                                                                                                                                                                                                                                                                                                                                Label_3223:
                                                                                                                                                                                                                                                                                                                                s7 = "LoaderTask";
                                                                                                                                                                                                                                                                                                                                try {
                                                                                                                                                                                                                                                                                                                                    append7 = new StringBuilder().append("Widget restore pending id=").append(loaderCursor.id).append(" appWidgetId=").append(int1).append(" status =").append(loaderCursor.restoreFlag);
                                                                                                                                                                                                                                                                                                                                    try {
                                                                                                                                                                                                                                                                                                                                        Log.v(s7, append7.toString());
                                                                                                                                                                                                                                                                                                                                        launcherAppWidgetInfo3 = new LauncherAppWidgetInfo(int1, unflattenFromString);
                                                                                                                                                                                                                                                                                                                                        launcherAppWidgetInfo3.restoreStatus = loaderCursor.restoreFlag;
                                                                                                                                                                                                                                                                                                                                        value6 = updateAndGetActiveSessionCache.get(unflattenFromString.getPackageName());
                                                                                                                                                                                                                                                                                                                                        try {
                                                                                                                                                                                                                                                                                                                                            n7 = value6;
                                                                                                                                                                                                                                                                                                                                            Label_3534: {
                                                                                                                                                                                                                                                                                                                                                while (true) {
                                                                                                                                                                                                                                                                                                                                                    Block_173: {
                                                                                                                                                                                                                                                                                                                                                        if (!loaderCursor.hasRestoreFlag(8)) {
                                                                                                                                                                                                                                                                                                                                                            if (n7 != null) {
                                                                                                                                                                                                                                                                                                                                                                launcherAppWidgetInfo3.restoreStatus |= 0x8;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            else if (!safeMode) {
                                                                                                                                                                                                                                                                                                                                                                break Block_173;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                        if (n7 != null) {
                                                                                                                                                                                                                                                                                                                                                            break Label_3534;
                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                        intValue = 0;
                                                                                                                                                                                                                                                                                                                                                        launcherAppWidgetInfo3.installProgress = intValue;
                                                                                                                                                                                                                                                                                                                                                        launcherAppWidgetInfo2 = launcherAppWidgetInfo3;
                                                                                                                                                                                                                                                                                                                                                        continue Label_0673_Outer;
                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                    try {
                                                                                                                                                                                                                                                                                                                                                        append8 = new StringBuilder().append("Unrestored widget removed: ").append(unflattenFromString);
                                                                                                                                                                                                                                                                                                                                                        try {
                                                                                                                                                                                                                                                                                                                                                            loaderCursor.markDeleted(append8.toString());
                                                                                                                                                                                                                                                                                                                                                            continue Label_0725;
                                                                                                                                                                                                                                                                                                                                                            intValue = n7;
                                                                                                                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                                                                                                                            // iftrue(Label_3657:, n6 != 0)
                                                                                                                                                                                                                                                                                                                                                            providerName = launcherAppWidgetInfo2.providerName;
                                                                                                                                                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                                                                                                                                                flattenToString = providerName.flattenToString();
                                                                                                                                                                                                                                                                                                                                                                Label_3598: {
                                                                                                                                                                                                                                                                                                                                                                    if (!flattenToString.equals(string)) {
                                                                                                                                                                                                                                                                                                                                                                        break Label_3598;
                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                    restoreStatus2 = launcherAppWidgetInfo2.restoreStatus;
                                                                                                                                                                                                                                                                                                                                                                    try {
                                                                                                                                                                                                                                                                                                                                                                        Label_3657: {
                                                                                                                                                                                                                                                                                                                                                                            if (restoreStatus2 == loaderCursor.restoreFlag) {
                                                                                                                                                                                                                                                                                                                                                                                break Label_3657;
                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                            put2 = loaderCursor.updater().put("appWidgetProvider", flattenToString);
                                                                                                                                                                                                                                                                                                                                                                            s8 = "restored";
                                                                                                                                                                                                                                                                                                                                                                            restoreStatus3 = launcherAppWidgetInfo2.restoreStatus;
                                                                                                                                                                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                                                                                                                                                                put3 = put2.put(s8, Integer.valueOf(restoreStatus3));
                                                                                                                                                                                                                                                                                                                                                                                try {
                                                                                                                                                                                                                                                                                                                                                                                    put3.commit();
                                                                                                                                                                                                                                                                                                                                                                                    if (launcherAppWidgetInfo2.restoreStatus == 0) {
                                                                                                                                                                                                                                                                                                                                                                                        break Label_3752;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    providerName2 = launcherAppWidgetInfo2.providerName;
                                                                                                                                                                                                                                                                                                                                                                                    try {
                                                                                                                                                                                                                                                                                                                                                                                        packageName = providerName2.getPackageName();
                                                                                                                                                                                                                                                                                                                                                                                        try {
                                                                                                                                                                                                                                                                                                                                                                                            pendingItemInfo = new PackageItemInfo(packageName);
                                                                                                                                                                                                                                                                                                                                                                                            launcherAppWidgetInfo4 = launcherAppWidgetInfo2;
                                                                                                                                                                                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                                                                                                                                                                                launcherAppWidgetInfo4.pendingItemInfo = pendingItemInfo;
                                                                                                                                                                                                                                                                                                                                                                                                pendingItemInfo2 = launcherAppWidgetInfo2.pendingItemInfo;
                                                                                                                                                                                                                                                                                                                                                                                                try {
                                                                                                                                                                                                                                                                                                                                                                                                    pendingItemInfo2.user = launcherAppWidgetInfo2.user;
                                                                                                                                                                                                                                                                                                                                                                                                    mIconCache = this.mIconCache;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                catch (Exception ex) {}
                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                            catch (Exception ex2) {}
                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                        catch (Exception ex3) {}
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    catch (Exception ex4) {}
                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                catch (Exception ex5) {}
                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                            catch (Exception ex6) {}
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                    catch (Exception ex7) {}
                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            catch (Exception ex8) {}
                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                        catch (Exception ex9) {}
                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                    catch (Exception ex10) {}
                                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                        catch (Exception ex11) {}
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    catch (Exception ex12) {}
                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                catch (Exception ex13) {}
                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        catch (Exception ex14) {}
                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                    catch (Exception ex15) {}
                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            catch (Exception ex16) {}
                                                                                                                                                                                                                                                                                                            Label_3024:
                                                                                                                                                                                                                                                                                                            n6 = 0;
                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                        catch (Exception ex17) {}
                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                    catch (Exception ex18) {}
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                            catch (Exception ex19) {}
                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                        catch (Exception ex20) {}
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    catch (Exception ex21) {}
                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                catch (Exception ex22) {}
                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                            catch (Exception ex23) {}
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        catch (Exception ex24) {}
                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                catch (Exception ex25) {}
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            catch (Exception ex26) {}
                                                                                                                                                                                                                                                            throw new RuntimeException("Unexpected null ShortcutInfo");
                                                                                                                                                                                                                                                            shortcutInfo.status &= 0xFFFFFFFB;
                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                        catch (Exception ex27) {}
                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                    catch (Exception ex28) {}
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                catch (Exception ex29) {}
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                            catch (Exception ex30) {}
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    catch (Exception ex31) {}
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                catch (Exception ex32) {}
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                            catch (Exception ex33) {}
                                                                                                                                                                                                                            b5 = false;
                                                                                                                                                                                                                            continue Label_1422_Outer;
                                                                                                                                                                                                                            Label_2163: {
                                                                                                                                                                                                                                continue Label_2486_Outer;
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    // iftrue(Label_2163:, loaderCursor.itemType != 0)
                                                                                                                                                                                                                    catch (Exception ex34) {}
                                                                                                                                                                                                                }
                                                                                                                                                                                                                catch (Exception ex35) {}
                                                                                                                                                                                                            }
                                                                                                                                                                                                        }
                                                                                                                                                                                                        catch (Exception ex36) {}
                                                                                                                                                                                                    }
                                                                                                                                                                                                    catch (Exception ex37) {}
                                                                                                                                                                                                    Label_1972:;
                                                                                                                                                                                                }
                                                                                                                                                                                                // iftrue(Label_2064:, bootCompleted)
                                                                                                                                                                                                catch (Exception ex38) {}
                                                                                                                                                                                            }
                                                                                                                                                                                            catch (Exception ex39) {}
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                    catch (Exception ex40) {}
                                                                                                                                                                                }
                                                                                                                                                                                // iftrue(Label_1880:, !updateAndGetActiveSessionCache.containsKey((Object)s4))
                                                                                                                                                                                catch (Exception ex41) {}
                                                                                                                                                                            }
                                                                                                                                                                            catch (Exception ex42) {}
                                                                                                                                                                        }
                                                                                                                                                                        Label_1756:
                                                                                                                                                                        loaderCursor.markDeleted("Unable to find a launch target");
                                                                                                                                                                    }
                                                                                                                                                                    catch (Exception ex43) {}
                                                                                                                                                                }
                                                                                                                                                                // iftrue(Label_1771:, !loaderCursor.hasRestoreFlag(2))
                                                                                                                                                                Block_79: {
                                                                                                                                                                    break Block_79;
                                                                                                                                                                    packageEnabledForProfile = true;
                                                                                                                                                                    continue Label_1222_Outer;
                                                                                                                                                                }
                                                                                                                                                                intent = packageManagerHelper.getAppLaunchIntent(s4, loaderCursor.user);
                                                                                                                                                            }
                                                                                                                                                            // iftrue(Label_1756:, intent == null)
                                                                                                                                                            catch (Exception ex44) {}
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    catch (Exception ex45) {}
                                                                                                                                                }
                                                                                                                                                catch (Exception ex46) {}
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        break;
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                        catch (Exception ex47) {}
                                                                                                                    }
                                                                                                                    catch (Exception ex48) {}
                                                                                                                }
                                                                                                                break;
                                                                                                            }
                                                                                                            break;
                                                                                                        }
                                                                                                    }
                                                                                                    break;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        catch (Exception ex49) {}
                                                                                    }
                                                                                    catch (Exception ex50) {}
                                                                                }
                                                                                break;
                                                                            }
                                                                            case 4:
                                                                            case 5: {
                                                                                continue Label_3017_Outer;
                                                                            }
                                                                        }
                                                                        break;
                                                                    }
                                                                    o = launcherAppState;
                                                                }
                                                            }
                                                        }
                                                        finally {}
                                                    }
                                                    finally {}
                                                }
                                                catch (Exception ex51) {}
                                                try {
                                                    loaderCursor3 = loaderCursor;
                                                    user = (user2 = loaderCursor3.user);
                                                    if (user2 == null) {
                                                        s2 = "User has been deleted";
                                                        loaderCursor4 = loaderCursor;
                                                        s3 = s2;
                                                        loaderCursor4.markDeleted(s3);
                                                        continue Label_0812_Outer;
                                                    }
                                                    continue Label_1422_Outer;
                                                }
                                                catch (Exception ex52) {}
                                                break;
                                            }
                                            break;
                                        }
                                        mIconCache.getTitleAndIconForApp(launcherAppWidgetInfo2.pendingItemInfo, false);
                                    }
                                    loaderCursor.checkAndAddItem(launcherAppWidgetInfo2, this.mBgDataModel);
                                    continue;
                                }
                            }
                            intent2 = intent;
                            shortcutInfo = loadSimpleShortcut2;
                            n3 = n5;
                            continue Label_1422;
                        }
                        n5 = n2;
                        continue;
                    }
                }
                b2 = b;
                continue;
            }
        }
        Utilities.closeSilently((Closeable)loaderCursor);
        if (this.mStopped) {
            this.mBgDataModel.clear();
            // monitorexit(mBgDataModel)
            return;
        }
        if (loaderCursor.commitDeleted()) {
            for (final long longValue : (ArrayList<Object>)LauncherSettings$Settings.call(contentResolver, "delete_empty_folders").getSerializable("value")) {
                this.mBgDataModel.workspaceItems.remove(this.mBgDataModel.folders.get(longValue));
                this.mBgDataModel.folders.remove(longValue);
                this.mBgDataModel.itemsIdMap.remove(longValue);
            }
            LauncherSettings$Settings.call(contentResolver, "remove_ghost_widgets");
        }
        final HashSet pendingShortcuts = InstallShortcutReceiver.getPendingShortcuts(context);
        for (final ShortcutKey shortcutKey : hashMap.keySet()) {
            final MutableInt mutableInt = this.mBgDataModel.pinnedShortcutCounts.get(shortcutKey);
            if ((mutableInt == null || mutableInt.value == 0) && (pendingShortcuts.contains(shortcutKey) ^ true)) {
                this.mShortcutManager.unpinShortcut(shortcutKey);
            }
        }
        final FolderIconPreviewVerifier folderIconPreviewVerifier2 = new FolderIconPreviewVerifier(this.mApp.getInvariantDeviceProfile());
        for (final FolderInfo folderInfo : this.mBgDataModel.folders) {
            Collections.sort((List<Object>)folderInfo.contents, Folder.ITEM_POS_COMPARATOR);
            folderIconPreviewVerifier2.setFolderInfo(folderInfo);
            int n8 = 0;
            for (final ShortcutInfo shortcutInfo3 : folderInfo.contents) {
                int n9;
                if (shortcutInfo3.usingLowResIcon && shortcutInfo3.itemType == 0) {
                    if (folderIconPreviewVerifier2.isItemInPreview(shortcutInfo3.rank)) {
                        this.mIconCache.getTitleAndIcon(shortcutInfo3, false);
                        n9 = n8 + 1;
                    }
                    else {
                        n9 = n8;
                    }
                }
                else {
                    n9 = n8;
                }
                if (n9 >= FolderIcon.NUM_ITEMS_IN_PREVIEW) {
                    break;
                }
                n8 = n9;
            }
        }
        loaderCursor.commitRestoredItems();
        if (!bootCompleted && (multiHashMap.isEmpty() ^ true)) {
            context.registerReceiver((BroadcastReceiver)new SdCardAvailableReceiver(this.mApp, multiHashMap), new IntentFilter("android.intent.action.BOOT_COMPLETED"), (String)null, new Handler(LauncherModel.getWorkerLooper()));
        }
        final ArrayList list = new ArrayList(this.mBgDataModel.workspaceScreens);
        for (final ItemInfo itemInfo : this.mBgDataModel.itemsIdMap) {
            final long screenId = itemInfo.screenId;
            if (itemInfo.container == -100 && list.contains(screenId)) {
                list.remove(screenId);
            }
        }
        if (list.size() != 0) {
            this.mBgDataModel.workspaceScreens.removeAll(list);
            LauncherModel.updateWorkspaceScreenOrder(context, this.mBgDataModel.workspaceScreens);
        }
    }
    // monitorexit(mBgDataModel)
    
    private void updateIconCache() {
        HashSet<String> set = null;
    Label_0033_Outer:
        while (true) {
            set = new HashSet<String>();
            while (true) {
                Label_0122: {
                    synchronized (this.mBgDataModel) {
                        for (final ItemInfo itemInfo : this.mBgDataModel.itemsIdMap) {
                            if (!(itemInfo instanceof ShortcutInfo)) {
                                break Label_0122;
                            }
                            final ShortcutInfo shortcutInfo = (ShortcutInfo)itemInfo;
                            if (!shortcutInfo.isPromise() || shortcutInfo.getTargetComponent() == null) {
                                continue Label_0033_Outer;
                            }
                            set.add(shortcutInfo.getTargetComponent().getPackageName());
                        }
                        break;
                    }
                }
                final LauncherAppWidgetInfo launcherAppWidgetInfo;
                if (!(launcherAppWidgetInfo instanceof LauncherAppWidgetInfo)) {
                    continue;
                }
                final LauncherAppWidgetInfo launcherAppWidgetInfo2 = launcherAppWidgetInfo;
                if (launcherAppWidgetInfo2.hasRestoreFlag(2)) {
                    set.add(launcherAppWidgetInfo2.providerName.getPackageName());
                    continue;
                }
                continue;
            }
        }
        // monitorexit(bgDataModel)
        this.mIconCache.updateDbIcons(set);
    }
    
    private void verifyNotStopped() {
        synchronized (this) {
            if (this.mStopped) {
                throw new CancellationException("Loader stopped");
            }
        }
    }
    // monitorexit(this)
    
    public void run() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_1       
        //     2: aload_0        
        //     3: monitorenter   
        //     4: aload_0        
        //     5: getfield        com/android/launcher3/model/LoaderTask.mStopped:Z
        //     8: istore_2       
        //     9: iload_2        
        //    10: ifeq            16
        //    13: aload_0        
        //    14: monitorexit    
        //    15: return         
        //    16: aload_0        
        //    17: monitorexit    
        //    18: aload_0        
        //    19: getfield        com/android/launcher3/model/LoaderTask.mApp:Lcom/android/launcher3/LauncherAppState;
        //    22: astore_3       
        //    23: aload_3        
        //    24: invokevirtual   com/android/launcher3/LauncherAppState.getModel:()Lcom/android/launcher3/LauncherModel;
        //    27: astore_3       
        //    28: aload_3        
        //    29: aload_0        
        //    30: invokevirtual   com/android/launcher3/LauncherModel.beginLoader:(Lcom/android/launcher3/model/LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTransaction;
        //    33: astore          4
        //    35: aload_0        
        //    36: invokespecial   com/android/launcher3/model/LoaderTask.loadWorkspace:()V
        //    39: aload_0        
        //    40: invokespecial   com/android/launcher3/model/LoaderTask.verifyNotStopped:()V
        //    43: aload_0        
        //    44: getfield        com/android/launcher3/model/LoaderTask.mResults:Lcom/android/launcher3/model/LoaderResults;
        //    47: astore_3       
        //    48: aload_3        
        //    49: invokevirtual   com/android/launcher3/model/LoaderResults.bindWorkspace:()V
        //    52: aload_0        
        //    53: invokevirtual   com/android/launcher3/model/LoaderTask.waitForIdle:()V
        //    56: aload_0        
        //    57: invokespecial   com/android/launcher3/model/LoaderTask.verifyNotStopped:()V
        //    60: aload_0        
        //    61: invokespecial   com/android/launcher3/model/LoaderTask.loadAllApps:()V
        //    64: aload_0        
        //    65: invokespecial   com/android/launcher3/model/LoaderTask.verifyNotStopped:()V
        //    68: aload_0        
        //    69: getfield        com/android/launcher3/model/LoaderTask.mResults:Lcom/android/launcher3/model/LoaderResults;
        //    72: astore_3       
        //    73: aload_3        
        //    74: invokevirtual   com/android/launcher3/model/LoaderResults.bindAllApps:()V
        //    77: aload_0        
        //    78: invokespecial   com/android/launcher3/model/LoaderTask.verifyNotStopped:()V
        //    81: aload_0        
        //    82: invokespecial   com/android/launcher3/model/LoaderTask.updateIconCache:()V
        //    85: aload_0        
        //    86: invokevirtual   com/android/launcher3/model/LoaderTask.waitForIdle:()V
        //    89: aload_0        
        //    90: invokespecial   com/android/launcher3/model/LoaderTask.verifyNotStopped:()V
        //    93: aload_0        
        //    94: invokespecial   com/android/launcher3/model/LoaderTask.loadDeepShortcuts:()V
        //    97: aload_0        
        //    98: invokespecial   com/android/launcher3/model/LoaderTask.verifyNotStopped:()V
        //   101: aload_0        
        //   102: getfield        com/android/launcher3/model/LoaderTask.mResults:Lcom/android/launcher3/model/LoaderResults;
        //   105: astore_3       
        //   106: aload_3        
        //   107: invokevirtual   com/android/launcher3/model/LoaderResults.bindDeepShortcuts:()V
        //   110: aload_0        
        //   111: invokevirtual   com/android/launcher3/model/LoaderTask.waitForIdle:()V
        //   114: aload_0        
        //   115: invokespecial   com/android/launcher3/model/LoaderTask.verifyNotStopped:()V
        //   118: aload_0        
        //   119: getfield        com/android/launcher3/model/LoaderTask.mBgDataModel:Lcom/android/launcher3/model/BgDataModel;
        //   122: astore_3       
        //   123: aload_3        
        //   124: getfield        com/android/launcher3/model/BgDataModel.widgetsModel:Lcom/android/launcher3/model/WidgetsModel;
        //   127: astore_3       
        //   128: aload_0        
        //   129: getfield        com/android/launcher3/model/LoaderTask.mApp:Lcom/android/launcher3/LauncherAppState;
        //   132: astore          5
        //   134: aload_3        
        //   135: aload           5
        //   137: aconst_null    
        //   138: invokevirtual   com/android/launcher3/model/WidgetsModel.update:(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V
        //   141: aload_0        
        //   142: invokespecial   com/android/launcher3/model/LoaderTask.verifyNotStopped:()V
        //   145: aload_0        
        //   146: getfield        com/android/launcher3/model/LoaderTask.mResults:Lcom/android/launcher3/model/LoaderResults;
        //   149: astore_3       
        //   150: aload_3        
        //   151: invokevirtual   com/android/launcher3/model/LoaderResults.bindWidgets:()V
        //   154: aload           4
        //   156: invokevirtual   com/android/launcher3/LauncherModel$LoaderTransaction.commit:()V
        //   159: aload           4
        //   161: ifnull          169
        //   164: aload           4
        //   166: invokevirtual   com/android/launcher3/LauncherModel$LoaderTransaction.close:()V
        //   169: aload_1        
        //   170: ifnull          176
        //   173: aload_1        
        //   174: athrow         
        //   175: astore_3       
        //   176: return         
        //   177: astore_3       
        //   178: aload_0        
        //   179: monitorexit    
        //   180: aload_3        
        //   181: athrow         
        //   182: astore_1       
        //   183: goto            169
        //   186: astore_3       
        //   187: aconst_null    
        //   188: astore          4
        //   190: aload_3        
        //   191: athrow         
        //   192: astore          6
        //   194: aload_3        
        //   195: astore_1       
        //   196: aload           6
        //   198: astore_3       
        //   199: aload           4
        //   201: ifnull          209
        //   204: aload           4
        //   206: invokevirtual   com/android/launcher3/LauncherModel$LoaderTransaction.close:()V
        //   209: aload_1        
        //   210: ifnull          242
        //   213: aload_1        
        //   214: athrow         
        //   215: astore          4
        //   217: aload_1        
        //   218: ifnonnull       227
        //   221: aload           4
        //   223: astore_1       
        //   224: goto            209
        //   227: aload_1        
        //   228: aload           4
        //   230: if_acmpeq       209
        //   233: aload_1        
        //   234: aload           4
        //   236: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   239: goto            209
        //   242: aload_3        
        //   243: athrow         
        //   244: astore_3       
        //   245: goto            190
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                        
        //  -----  -----  -----  -----  --------------------------------------------
        //  4      8      177    182    Any
        //  18     22     186    190    Any
        //  23     27     186    190    Any
        //  29     33     186    190    Any
        //  35     39     244    248    Any
        //  39     43     244    248    Any
        //  43     47     244    248    Any
        //  48     52     244    248    Any
        //  52     56     244    248    Any
        //  56     60     244    248    Any
        //  60     64     244    248    Any
        //  64     68     244    248    Any
        //  68     72     244    248    Any
        //  73     77     244    248    Any
        //  77     81     244    248    Any
        //  81     85     244    248    Any
        //  85     89     244    248    Any
        //  89     93     244    248    Any
        //  93     97     244    248    Any
        //  97     101    244    248    Any
        //  101    105    244    248    Any
        //  106    110    244    248    Any
        //  110    114    244    248    Any
        //  114    118    244    248    Any
        //  118    122    244    248    Any
        //  123    127    244    248    Any
        //  128    132    244    248    Any
        //  137    141    244    248    Any
        //  141    145    244    248    Any
        //  145    149    244    248    Any
        //  150    154    244    248    Any
        //  154    159    244    248    Any
        //  164    169    182    186    Any
        //  173    175    175    176    Ljava/util/concurrent/CancellationException;
        //  190    192    192    244    Any
        //  204    209    215    242    Any
        //  213    215    175    176    Ljava/util/concurrent/CancellationException;
        //  234    239    175    176    Ljava/util/concurrent/CancellationException;
        //  242    244    175    176    Ljava/util/concurrent/CancellationException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 141, Size: 141
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3303)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:113)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:317)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:238)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:123)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public void stopLocked() {
        // monitorenter(this)
        final boolean mStopped = true;
        try {
            this.mStopped = mStopped;
            this.notify();
        }
        finally {
        }
        // monitorexit(this)
    }
    
    protected void waitForIdle() {
        synchronized (this) {
            final LooperIdleLock idleLock = this.mResults.newIdleLock(this);
            while (!this.mStopped && idleLock.awaitLocked(1000L)) {}
        }
    }
}
