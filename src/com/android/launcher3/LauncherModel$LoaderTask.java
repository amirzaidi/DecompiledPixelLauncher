// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.model.PackageInstallStateChangedTask;
import com.android.launcher3.compat.PackageInstallerCompat$PackageInstallInfo;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.model.ShortcutsChangedTask;
import com.android.launcher3.dynamicui.ExtractionUtils;
import com.android.launcher3.model.UserLockStateChangedTask;
import com.android.launcher3.model.CacheDataUpdatedTask;
import com.android.launcher3.model.PackageUpdatedTask;
import com.android.launcher3.util.Preconditions;
import com.android.launcher3.model.ModelWriter;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import com.android.launcher3.model.AddWorkspaceItemsTask;
import com.android.launcher3.util.Provider;
import com.android.launcher3.provider.LauncherDbUtils;
import android.os.Looper;
import com.android.launcher3.compat.UserManagerCompat;
import java.lang.ref.WeakReference;
import com.android.launcher3.model.WidgetsModel;
import android.os.HandlerThread;
import android.os.Handler;
import com.android.launcher3.compat.LauncherAppsCompat$OnAppsChangedCallbackCompat;
import java.util.concurrent.CancellationException;
import java.util.Set;
import com.android.launcher3.util.ContentWriter;
import android.content.Intent;
import android.net.Uri;
import android.database.Cursor;
import com.android.launcher3.model.BgDataModel;
import android.content.ContentResolver;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import com.android.launcher3.model.SdCardAvailableReceiver;
import com.android.launcher3.folder.Folder;
import android.util.MutableInt;
import java.io.Closeable;
import android.appwidget.AppWidgetProviderInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.compat.AppWidgetManagerCompat;
import android.content.ComponentName;
import com.android.launcher3.graphics.LauncherIcons;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.logging.FileLog;
import android.text.TextUtils;
import android.os.Process;
import com.android.launcher3.shortcuts.ShortcutKey;
import android.util.LongSparseArray;
import com.android.launcher3.model.LoaderCursor;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import java.util.HashMap;
import com.android.launcher3.compat.PackageInstallerCompat;
import com.android.launcher3.model.GridSizeMigrationTask;
import com.android.launcher3.provider.ImportDataTask;
import com.android.launcher3.util.MultiHashMap;
import com.android.launcher3.compat.LauncherAppsCompat;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import com.android.launcher3.util.ManagedProfileHeuristic;
import android.content.pm.LauncherActivityInfo;
import android.os.UserHandle;
import java.util.Comparator;
import java.util.List;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import com.android.launcher3.util.ViewOnDrawExecutor;
import java.util.concurrent.Executor;
import java.util.Collection;
import java.util.ArrayList;
import android.util.Log;
import android.os.SystemClock;
import android.content.Context;

class LauncherModel$LoaderTask implements Runnable
{
    private Context mContext;
    boolean mIsLoadingAndBindingWorkspace;
    boolean mLoadAndBindStepFinished;
    private int mPageToBindFirst;
    private boolean mStopped;
    final /* synthetic */ LauncherModel this$0;
    
    LauncherModel$LoaderTask(final LauncherModel this$0, final Context mContext, final int mPageToBindFirst) {
        this.this$0 = this$0;
        this.mContext = mContext;
        this.mPageToBindFirst = mPageToBindFirst;
    }
    
    private void bindWorkspace(int currentWorkspaceScreen) {
        final long uptimeMillis = SystemClock.uptimeMillis();
        final LauncherModel$Callbacks launcherModel$Callbacks = (LauncherModel$Callbacks)this.this$0.mCallbacks.get();
        if (launcherModel$Callbacks == null) {
            Log.w("Launcher.Model", "LoaderTask running with no launcher");
            return;
        }
        ArrayList list;
        ArrayList list2;
        ArrayList<Long> list3;
        Object o;
        Object o2 = null;
        boolean b;
        long longValue;
        ArrayList list4;
        ArrayList list5;
        ArrayList list6;
        ArrayList list7;
        Label_0182_Outer:Label_0205_Outer:Label_0370_Outer:
        while (true) {
            list = new ArrayList();
            list2 = new ArrayList();
            list3 = new ArrayList<Long>();
            o = LauncherModel.sBgDataModel;
            while (true) {
            Label_0507:
                while (true) {
                Label_0500:
                    while (true) {
                    Label_0485:
                        while (true) {
                            synchronized (o) {
                                o2 = LauncherModel.sBgDataModel;
                                o2 = ((BgDataModel)o2).workspaceItems;
                                list.addAll((Collection)o2);
                                o2 = LauncherModel.sBgDataModel;
                                o2 = ((BgDataModel)o2).appWidgets;
                                list2.addAll((Collection)o2);
                                o2 = LauncherModel.sBgDataModel;
                                o2 = ((BgDataModel)o2).workspaceScreens;
                                list3.addAll((Collection<? extends Long>)o2);
                                // monitorexit(o)
                                if (currentWorkspaceScreen != -1001) {
                                    if (currentWorkspaceScreen >= list3.size()) {
                                        currentWorkspaceScreen = -1001;
                                    }
                                    if (currentWorkspaceScreen < 0) {
                                        break Label_0485;
                                    }
                                    b = true;
                                    if (!b) {
                                        break Label_0500;
                                    }
                                    o = list3.get(currentWorkspaceScreen);
                                    longValue = (long)o;
                                    list4 = new ArrayList();
                                    list5 = new ArrayList();
                                    list6 = new ArrayList();
                                    list7 = new ArrayList();
                                    o = this;
                                    this.filterCurrentWorkspaceItems(longValue, list, list4, list5);
                                    this.filterCurrentAppWidgets(longValue, list2, list6, list7);
                                    this.sortWorkspaceItemsSpatially(list4);
                                    this.sortWorkspaceItemsSpatially(list5);
                                    o = new LauncherModel$LoaderTask$7(this, launcherModel$Callbacks);
                                    this.this$0.runOnMainThread((Runnable)o);
                                    this.bindWorkspaceScreens(launcherModel$Callbacks, list3);
                                    o2 = new(com.android.launcher3.LauncherModel$DeferredMainThreadExecutor.class);
                                    o = this.this$0;
                                    new LauncherModel$DeferredMainThreadExecutor((LauncherModel)o);
                                    this.bindWorkspaceItems(launcherModel$Callbacks, list4, list6, (Executor)o2);
                                    if (b) {
                                        o = new ViewOnDrawExecutor(this.this$0.mHandler);
                                        ((Executor)o2).execute(new LauncherModel$LoaderTask$8(this, launcherModel$Callbacks, b, (Executor)o));
                                        this.bindWorkspaceItems(launcherModel$Callbacks, list5, list7, (Executor)o);
                                        o2 = new LauncherModel$LoaderTask$9(this, launcherModel$Callbacks, uptimeMillis);
                                        ((Executor)o).execute((Runnable)o2);
                                        if (b) {
                                            o2 = new LauncherModel$LoaderTask$10(this, launcherModel$Callbacks, currentWorkspaceScreen, (Executor)o);
                                            this.this$0.runOnMainThread((Runnable)o2);
                                        }
                                        return;
                                    }
                                    break Label_0507;
                                }
                            }
                            currentWorkspaceScreen = launcherModel$Callbacks.getCurrentWorkspaceScreen();
                            continue Label_0182_Outer;
                        }
                        o = null;
                        b = false;
                        continue Label_0205_Outer;
                    }
                    longValue = -1;
                    continue Label_0370_Outer;
                }
                o = o2;
                continue;
            }
        }
    }
    
    private void bindWorkspaceItems(final LauncherModel$Callbacks launcherModel$Callbacks, final ArrayList list, final ArrayList list2, final Executor executor) {
        for (int size = list.size(), i = 0; i < size; i += 6) {
            int n;
            if (i + 6 <= size) {
                n = 6;
            }
            else {
                n = size - i;
            }
            executor.execute(new LauncherModel$LoaderTask$5(this, launcherModel$Callbacks, list, i, n));
        }
        for (int size2 = list2.size(), j = 0; j < size2; ++j) {
            executor.execute(new LauncherModel$LoaderTask$6(this, launcherModel$Callbacks, list2.get(j)));
        }
    }
    
    private void bindWorkspaceScreens(final LauncherModel$Callbacks launcherModel$Callbacks, final ArrayList list) {
        this.this$0.runOnMainThread(new LauncherModel$LoaderTask$4(this, launcherModel$Callbacks, list));
    }
    
    private void filterCurrentAppWidgets(final long n, final ArrayList list, final ArrayList list2, final ArrayList list3) {
        for (final LauncherAppWidgetInfo launcherAppWidgetInfo : list) {
            if (launcherAppWidgetInfo != null) {
                if (launcherAppWidgetInfo.container == -100 && launcherAppWidgetInfo.screenId == n) {
                    list2.add(launcherAppWidgetInfo);
                }
                else {
                    list3.add(launcherAppWidgetInfo);
                }
            }
        }
    }
    
    private void filterCurrentWorkspaceItems(final long n, final ArrayList list, final ArrayList list2, final ArrayList list3) {
        final Iterator<ItemInfo> iterator = list.iterator();
        while (iterator.hasNext()) {
            if (iterator.next() == null) {
                iterator.remove();
            }
        }
        final HashSet<Long> set = new HashSet<Long>();
        Collections.sort((List<Object>)list, new LauncherModel$LoaderTask$2(this));
        for (final ItemInfo itemInfo : list) {
            if (itemInfo.container == -100) {
                if (itemInfo.screenId == n) {
                    list2.add(itemInfo);
                    set.add(itemInfo.id);
                }
                else {
                    list3.add(itemInfo);
                }
            }
            else if (itemInfo.container == -101) {
                list2.add(itemInfo);
                set.add(itemInfo.id);
            }
            else if (set.contains(itemInfo.container)) {
                list2.add(itemInfo);
                set.add(itemInfo.id);
            }
            else {
                list3.add(itemInfo);
            }
        }
    }
    
    private void loadAllApps() {
        final LauncherModel$Callbacks launcherModel$Callbacks = (LauncherModel$Callbacks)this.this$0.mCallbacks.get();
        if (launcherModel$Callbacks == null) {
            Log.w("Launcher.Model", "LoaderTask running with no launcher (loadAllApps)");
            return;
        }
        final List userProfiles = this.this$0.mUserManager.getUserProfiles();
        this.this$0.mBgAllAppsList.clear();
        for (final UserHandle userHandle : userProfiles) {
            final List activityList = this.this$0.mLauncherApps.getActivityList(null, userHandle);
            if (activityList == null || activityList.isEmpty()) {
                return;
            }
            final boolean quietModeEnabled = this.this$0.mUserManager.isQuietModeEnabled(userHandle);
            for (int i = 0; i < activityList.size(); ++i) {
                final LauncherActivityInfo launcherActivityInfo = activityList.get(i);
                this.this$0.mBgAllAppsList.add(new AppInfo(launcherActivityInfo, userHandle, quietModeEnabled), launcherActivityInfo);
            }
            final ManagedProfileHeuristic value = ManagedProfileHeuristic.get(this.mContext, userHandle);
            if (value == null) {
                continue;
            }
            this.this$0.runOnMainThread(new LauncherModel$LoaderTask$13(this, new LauncherModel$LoaderTask$12(this, value, activityList)));
        }
        final ArrayList added = this.this$0.mBgAllAppsList.added;
        this.this$0.mBgAllAppsList.added = new ArrayList();
        this.this$0.mHandler.post(new LauncherModel$LoaderTask$14(this, launcherModel$Callbacks, added));
        ManagedProfileHeuristic.processAllUsers(userProfiles, this.mContext);
    }
    
    private void loadDeepShortcuts() {
        LauncherModel.sBgDataModel.deepShortcutMap.clear();
        final DeepShortcutManager instance = DeepShortcutManager.getInstance(this.mContext);
        this.this$0.mHasShortcutHostPermission = instance.hasHostPermission();
        if (this.this$0.mHasShortcutHostPermission) {
            for (final UserHandle userHandle : this.this$0.mUserManager.getUserProfiles()) {
                if (this.this$0.mUserManager.isUserUnlocked(userHandle)) {
                    LauncherModel.sBgDataModel.updateDeepShortcutMap(null, userHandle, instance.queryForAllShortcuts(userHandle));
                }
            }
        }
    }
    
    private void loadWorkspace() {
        Context mContext = null;
        ContentResolver contentResolver = null;
        DeepShortcutManager instance2 = null;
        boolean bootCompleted = false;
        MultiHashMap multiHashMap = null;
        HashMap<Object, ShortcutInfoCompat> hashMap = null;
        LoaderCursor loaderCursor = null;
    Label_0721_Outer:
        while (true) {
            mContext = this.mContext;
            contentResolver = mContext.getContentResolver();
            final PackageManagerHelper packageManagerHelper = new PackageManagerHelper(mContext);
            final boolean safeMode = packageManagerHelper.isSafeMode();
            final LauncherAppsCompat instance = LauncherAppsCompat.getInstance(mContext);
            instance2 = DeepShortcutManager.getInstance(mContext);
            bootCompleted = Utilities.isBootCompleted();
            multiHashMap = new MultiHashMap();
            int n = 0;
            Object o;
            BgDataModel sBgDataModel;
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
            LoaderCursor loaderCursor3;
            UserHandle user;
            UserHandle user2;
            String s2;
            LoaderCursor loaderCursor4;
            String s3;
            boolean b3;
            LauncherModel launcherModel = null;
            Intent intent = null;
            Object value;
            Boolean b4;
            int n2 = 0;
            ComponentName component;
            String s4;
            boolean packageEnabledForProfile;
            String s5;
            StringBuilder append;
            int int1;
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
            ShortcutInfoCompat shortcutInfoCompat3;
            String package1;
            ShortcutInfo loadSimpleShortcut;
            ShortcutInfo loadSimpleShortcut2 = null;
            int n5 = 0;
            FolderInfo orMakeFolder;
            LoaderCursor loaderCursor6;
            int n6;
            int int2;
            String string;
            ComponentName unflattenFromString;
            boolean b7;
            boolean b8;
            Context mContext2;
            AppWidgetManagerCompat instance3;
            ComponentKey componentKey;
            LauncherModel launcherModel2;
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
            ContentWriter put3 = null;
            Label_1427_Outer:Label_2473_Outer:
            while (true) {
                Label_4480: {
                    while (true) {
                        Label_1427:Label_3002_Outer:
                        while (true) {
                            Label_4458: {
                                while (true) {
                                    Label_3649: {
                                    Label_0830_Outer:
                                        while (true) {
                                            while (true) {
                                                try {
                                                    ImportDataTask.performImportIfPossible(mContext);
                                                    if (n == 0 && GridSizeMigrationTask.ENABLED && (GridSizeMigrationTask.migrateGridIfNeeded(this.mContext) ^ true)) {
                                                        n = 1;
                                                    }
                                                    if (n != 0) {
                                                        Log.d("Launcher.Model", "loadWorkspace: resetting launcher database");
                                                        LauncherSettings$Settings.call(contentResolver, "create_empty_db");
                                                    }
                                                    o = "loadWorkspace: loading default favorites";
                                                    Log.d("Launcher.Model", (String)o);
                                                    LauncherSettings$Settings.call(contentResolver, "load_default_favorites");
                                                    sBgDataModel = LauncherModel.sBgDataModel;
                                                    // monitorenter(sBgDataModel)
                                                    try {
                                                        LauncherModel.sBgDataModel.clear();
                                                        updateAndGetActiveSessionCache = PackageInstallerCompat.getInstance(this.mContext).updateAndGetActiveSessionCache();
                                                        workspaceScreens = LauncherModel.sBgDataModel.workspaceScreens;
                                                        o = this.mContext;
                                                        o = LauncherModel.loadWorkspaceScreensDb((Context)o);
                                                        workspaceScreens.addAll((Collection)o);
                                                        hashMap = new HashMap<Object, ShortcutInfoCompat>();
                                                        loaderCursor = new LoaderCursor(query, (LauncherAppState)o);
                                                        content_URI = LauncherSettings$Favorites.CONTENT_URI;
                                                        o = null;
                                                        b = false;
                                                        allUsers = null;
                                                        iterator = null;
                                                        query = contentResolver.query(content_URI, (String[])null, (String)null, (String[])null, (String)null);
                                                        o = this.this$0;
                                                        o = ((LauncherModel)o).mApp;
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
                                                            iterator = (Iterator<UserHandle>)this.this$0.mUserManager.getUserProfiles().iterator();
                                                            while (iterator.hasNext()) {
                                                                userHandle = iterator.next();
                                                                serialNumberForUser = this.this$0.mUserManager.getSerialNumberForUser(userHandle);
                                                                allUsers.put(serialNumberForUser, (Object)userHandle);
                                                                b = this.this$0.mUserManager.isQuietModeEnabled(userHandle);
                                                                longSparseArray.put(serialNumberForUser, (Object)b);
                                                                b = this.this$0.mUserManager.isUserUnlocked(userHandle);
                                                                if (!b) {
                                                                    break Label_4480;
                                                                }
                                                                queryForPinnedShortcuts = instance2.queryForPinnedShortcuts(null, userHandle);
                                                                if (instance2.wasLastCallSuccess()) {
                                                                    for (final ShortcutInfoCompat shortcutInfoCompat : queryForPinnedShortcuts) {
                                                                        hashMap.put(ShortcutKey.fromInfo(shortcutInfoCompat), shortcutInfoCompat);
                                                                    }
                                                                    break Label_4480;
                                                                }
                                                                b2 = false;
                                                                longSparseArray2.put(serialNumberForUser, (Object)b2);
                                                            }
                                                        Label_2757_Outer:
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
                                                                                launcherModel = (LauncherModel)o;
                                                                                break;
                                                                            }
                                                                            case 0:
                                                                            case 1:
                                                                            case 6: {
                                                                                intent = loaderCursor.parseIntent();
                                                                                if (intent == null) {
                                                                                    loaderCursor.markDeleted("Invalid or null intent");
                                                                                    continue Label_0721_Outer;
                                                                                }
                                                                            }
                                                                            case 2: {
                                                                                Label_2641: {
                                                                                    break Label_2641;
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
                                                                                                    continue Label_0721_Outer;
                                                                                                }
                                                                                                if (loaderCursor.restoreFlag != 0) {
                                                                                                    loaderCursor.markDeleted("Restore from managed profile not supported");
                                                                                                    continue Label_0721_Outer;
                                                                                                }
                                                                                            }
                                                                                            if (TextUtils.isEmpty((CharSequence)s4) && loaderCursor.itemType != 1) {
                                                                                                loaderCursor.markDeleted("Only legacy shortcuts can have null package");
                                                                                                continue Label_0721_Outer;
                                                                                            }
                                                                                            Label_1633: {
                                                                                                if (TextUtils.isEmpty((CharSequence)s4)) {
                                                                                                    break Label_1633;
                                                                                                }
                                                                                                packageEnabledForProfile = instance.isPackageEnabledForProfile(s4, loaderCursor.user);
                                                                                            Label_1226_Outer:
                                                                                                while (true) {
                                                                                                    Label_1643: {
                                                                                                        if (component != null && packageEnabledForProfile) {
                                                                                                            if (!instance.isActivityEnabledForProfile(component, loaderCursor.user)) {
                                                                                                                break Label_1643;
                                                                                                            }
                                                                                                            loaderCursor.markRestored();
                                                                                                        }
                                                                                                    Label_1342_Outer:
                                                                                                        while (true) {
                                                                                                        Label_1391_Outer:
                                                                                                            while (true) {
                                                                                                                if (TextUtils.isEmpty((CharSequence)s4) || !(packageEnabledForProfile ^ true)) {
                                                                                                                    break Label_1342;
                                                                                                                }
                                                                                                                Label_1935: {
                                                                                                                    if (loaderCursor.restoreFlag == 0) {
                                                                                                                        break Label_1935;
                                                                                                                    }
                                                                                                                    s5 = "Launcher.Model";
                                                                                                                    try {
                                                                                                                        append = new StringBuilder().append("package not yet restored: ").append(s4);
                                                                                                                        try {
                                                                                                                            FileLog.d(s5, append.toString());
                                                                                                                            Label_1829: {
                                                                                                                                if (!loaderCursor.hasRestoreFlag(8)) {
                                                                                                                                    break Label_1829;
                                                                                                                                }
                                                                                                                                if (packageEnabledForProfile) {
                                                                                                                                    loaderCursor.markRestored();
                                                                                                                                }
                                                                                                                                Label_2125: {
                                                                                                                                    if (loaderCursor.isOnWorkspaceOrHotseat()) {
                                                                                                                                        break Label_2125;
                                                                                                                                    }
                                                                                                                                    int1 = loaderCursor.getInt(columnIndexOrThrow5);
                                                                                                                                    try {
                                                                                                                                        Label_2116: {
                                                                                                                                            if (int1 < FolderIcon.NUM_ITEMS_IN_PREVIEW) {
                                                                                                                                                break Label_2116;
                                                                                                                                            }
                                                                                                                                            b5 = true;
                                                                                                                                            while (true) {
                                                                                                                                                Label_2134: {
                                                                                                                                                    if (loaderCursor.restoreFlag == 0) {
                                                                                                                                                        break Label_2134;
                                                                                                                                                    }
                                                                                                                                                    shortcutInfo = loaderCursor.getRestoredItemInfo(intent);
                                                                                                                                                    n3 = n2;
                                                                                                                                                    intent2 = intent;
                                                                                                                                                    Label_2621: {
                                                                                                                                                        if (shortcutInfo == null) {
                                                                                                                                                            break Label_2621;
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
                                                                                                                                                                if (safeMode && (Utilities.isSystemApp(mContext, intent2) ^ true)) {
                                                                                                                                                                    shortcutInfo.isDisabled |= 0x1;
                                                                                                                                                                }
                                                                                                                                                                while (true) {
                                                                                                                                                                    if (loaderCursor.restoreFlag == 0 || !(TextUtils.isEmpty((CharSequence)s4) ^ true)) {
                                                                                                                                                                        break Label_1609;
                                                                                                                                                                    }
                                                                                                                                                                    value2 = updateAndGetActiveSessionCache.get(s4);
                                                                                                                                                                    try {
                                                                                                                                                                        n4 = value2;
                                                                                                                                                                        Label_2601: {
                                                                                                                                                                            if (n4 == null) {
                                                                                                                                                                                break Label_2601;
                                                                                                                                                                            }
                                                                                                                                                                            shortcutInfo.setInstallProgress(n4);
                                                                                                                                                                            loaderCursor.checkAndAddItem(shortcutInfo, LauncherModel.sBgDataModel);
                                                                                                                                                                            launcherModel = (LauncherModel)o;
                                                                                                                                                                            break;
                                                                                                                                                                            loaderCursor.restoreFlag = 0;
                                                                                                                                                                            put = loaderCursor.updater().put("intent", intent.toUri(0));
                                                                                                                                                                            try {
                                                                                                                                                                                put.commit();
                                                                                                                                                                                intent.getComponent();
                                                                                                                                                                                continue Label_1342_Outer;
                                                                                                                                                                                Label_1758: {
                                                                                                                                                                                    loaderCursor.markDeleted("Unable to find a launch target");
                                                                                                                                                                                }
                                                                                                                                                                                continue Label_0721_Outer;
                                                                                                                                                                                Label_1773:
                                                                                                                                                                                try {
                                                                                                                                                                                    append2 = new StringBuilder().append("Invalid component removed: ").append(component);
                                                                                                                                                                                    try {
                                                                                                                                                                                        loaderCursor.markDeleted(append2.toString());
                                                                                                                                                                                        continue Label_0721_Outer;
                                                                                                                                                                                        loaderCursor.restoreFlag |= 0x8;
                                                                                                                                                                                        updater = loaderCursor.updater();
                                                                                                                                                                                        try {
                                                                                                                                                                                            updater.commit();
                                                                                                                                                                                            continue Label_1391_Outer;
                                                                                                                                                                                            Label_1882:
                                                                                                                                                                                            try {
                                                                                                                                                                                                append3 = new StringBuilder().append("Unrestored app removed: ").append(s4);
                                                                                                                                                                                                try {
                                                                                                                                                                                                    loaderCursor.markDeleted(append3.toString());
                                                                                                                                                                                                    continue Label_0721_Outer;
                                                                                                                                                                                                    n2 |= 0x2;
                                                                                                                                                                                                    b3 = true;
                                                                                                                                                                                                    continue Label_1391_Outer;
                                                                                                                                                                                                    Label_1974:
                                                                                                                                                                                                    // iftrue(Label_2066:, bootCompleted)
                                                                                                                                                                                                    s6 = "Launcher.Model";
                                                                                                                                                                                                    try {
                                                                                                                                                                                                        append4 = new StringBuilder().append("Missing pkg, will check later: ").append(s4);
                                                                                                                                                                                                        try {
                                                                                                                                                                                                            Log.d(s6, append4.toString());
                                                                                                                                                                                                            multiHashMap.addToList(loaderCursor.user, s4);
                                                                                                                                                                                                            b3 = true;
                                                                                                                                                                                                            continue Label_1391_Outer;
                                                                                                                                                                                                            Label_2066:
                                                                                                                                                                                                            try {
                                                                                                                                                                                                                append5 = new StringBuilder().append("Invalid package removed: ").append(s4);
                                                                                                                                                                                                                try {
                                                                                                                                                                                                                    loaderCursor.markDeleted(append5.toString());
                                                                                                                                                                                                                    continue Label_0721_Outer;
                                                                                                                                                                                                                    Label_2174:
                                                                                                                                                                                                                    // iftrue(Label_2421:, loaderCursor.itemType != 6)
                                                                                                                                                                                                                    // iftrue(Label_2174:, loaderCursor.itemType != 0)
                                                                                                                                                                                                                    Block_107: {
                                                                                                                                                                                                                        break Block_107;
                                                                                                                                                                                                                        while (true) {
                                                                                                                                                                                                                            shortcutInfo = loaderCursor.getAppShortcutInfo(intent, b3, b5);
                                                                                                                                                                                                                            n3 = n2;
                                                                                                                                                                                                                            intent2 = intent;
                                                                                                                                                                                                                            continue Label_1427;
                                                                                                                                                                                                                            continue Label_2473_Outer;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    fromIntent = ShortcutKey.fromIntent(intent, loaderCursor.user);
                                                                                                                                                                                                                    try {
                                                                                                                                                                                                                        value3 = longSparseArray2.get(loaderCursor.serialNumber);
                                                                                                                                                                                                                        try {
                                                                                                                                                                                                                            b6 = (Boolean)value3;
                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                Label_2382: {
                                                                                                                                                                                                                                    if (!b6) {
                                                                                                                                                                                                                                        break Label_2382;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    value4 = hashMap.get(fromIntent);
                                                                                                                                                                                                                                    try {
                                                                                                                                                                                                                                        shortcutInfoCompat2 = (ShortcutInfoCompat)value4;
                                                                                                                                                                                                                                        if (shortcutInfoCompat2 == null) {
                                                                                                                                                                                                                                            loaderCursor.markDeleted("Pinned shortcut not found");
                                                                                                                                                                                                                                            continue Label_0721_Outer;
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                        shortcutInfo = new ShortcutInfo(shortcutInfoCompat2, mContext);
                                                                                                                                                                                                                                        shortcutInfoCompat3 = shortcutInfoCompat2;
                                                                                                                                                                                                                                        try {
                                                                                                                                                                                                                                            shortcutInfo.iconBitmap = LauncherIcons.createShortcutIcon(shortcutInfoCompat3, mContext);
                                                                                                                                                                                                                                            package1 = shortcutInfoCompat2.getPackage();
                                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                                if (packageManagerHelper.isAppSuspended(package1, shortcutInfo.user)) {
                                                                                                                                                                                                                                                    shortcutInfo.isDisabled |= 0x4;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                intent2 = shortcutInfo.intent;
                                                                                                                                                                                                                                                n3 = n2;
                                                                                                                                                                                                                                                continue Label_1427;
                                                                                                                                                                                                                                                loadSimpleShortcut = loaderCursor.loadSimpleShortcut();
                                                                                                                                                                                                                                                try {
                                                                                                                                                                                                                                                    loadSimpleShortcut.isDisabled |= 0x20;
                                                                                                                                                                                                                                                    shortcutInfo = loadSimpleShortcut;
                                                                                                                                                                                                                                                    n3 = n2;
                                                                                                                                                                                                                                                    intent2 = intent;
                                                                                                                                                                                                                                                    continue Label_1427;
                                                                                                                                                                                                                                                    Label_2421:
                                                                                                                                                                                                                                                    loadSimpleShortcut2 = loaderCursor.loadSimpleShortcut();
                                                                                                                                                                                                                                                    try {
                                                                                                                                                                                                                                                        if (!TextUtils.isEmpty((CharSequence)s4)) {
                                                                                                                                                                                                                                                            if (!packageManagerHelper.isAppSuspended(s4, loaderCursor.user)) {
                                                                                                                                                                                                                                                                break Label_1427;
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
                                                                                                                                                                                                                                                            continue Label_1427;
                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                        if (intent.getCategories().contains("android.intent.category.LAUNCHER")) {
                                                                                                                                                                                                                                                            intent.addFlags(270532608);
                                                                                                                                                                                                                                                            intent2 = intent;
                                                                                                                                                                                                                                                            shortcutInfo = loadSimpleShortcut2;
                                                                                                                                                                                                                                                            n3 = n5;
                                                                                                                                                                                                                                                            continue Label_1427;
                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                        break Label_4458;
                                                                                                                                                                                                                                                        shortcutInfo.status &= 0xFFFFFFFB;
                                                                                                                                                                                                                                                        continue Label_2473_Outer;
                                                                                                                                                                                                                                                        throw new RuntimeException("Unexpected null ShortcutInfo");
                                                                                                                                                                                                                                                        orMakeFolder = LauncherModel.sBgDataModel.findOrMakeFolder(loaderCursor.id);
                                                                                                                                                                                                                                                        loaderCursor.applyCommonProperties(orMakeFolder);
                                                                                                                                                                                                                                                        orMakeFolder.title = loaderCursor.getString(loaderCursor.titleIndex);
                                                                                                                                                                                                                                                        orMakeFolder.spanX = 1;
                                                                                                                                                                                                                                                        orMakeFolder.spanY = 1;
                                                                                                                                                                                                                                                        loaderCursor6 = loaderCursor;
                                                                                                                                                                                                                                                        try {
                                                                                                                                                                                                                                                            orMakeFolder.options = loaderCursor6.getInt(columnIndexOrThrow6);
                                                                                                                                                                                                                                                            loaderCursor.markRestored();
                                                                                                                                                                                                                                                            loaderCursor.checkAndAddItem(orMakeFolder, LauncherModel.sBgDataModel);
                                                                                                                                                                                                                                                            launcherModel = (LauncherModel)o;
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                            n6 = 1;
                                                                                                                                                                                                                                                            while (true) {
                                                                                                                                                                                                                                                                int2 = loaderCursor.getInt(columnIndexOrThrow);
                                                                                                                                                                                                                                                                string = loaderCursor.getString(columnIndexOrThrow2);
                                                                                                                                                                                                                                                                try {
                                                                                                                                                                                                                                                                    unflattenFromString = ComponentName.unflattenFromString(string);
                                                                                                                                                                                                                                                                    b7 = (loaderCursor.hasRestoreFlag(1) ^ true);
                                                                                                                                                                                                                                                                    b8 = (loaderCursor.hasRestoreFlag(2) ^ true);
                                                                                                                                                                                                                                                                    Label_2868: {
                                                                                                                                                                                                                                                                        if (o != null) {
                                                                                                                                                                                                                                                                            break Label_2868;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        mContext2 = this.mContext;
                                                                                                                                                                                                                                                                        try {
                                                                                                                                                                                                                                                                            instance3 = AppWidgetManagerCompat.getInstance(mContext2);
                                                                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                                                                o = instance3.getAllProvidersMap();
                                                                                                                                                                                                                                                                                try {
                                                                                                                                                                                                                                                                                    try {
                                                                                                                                                                                                                                                                                        componentKey = new ComponentKey(ComponentName.unflattenFromString(string), loaderCursor.user);
                                                                                                                                                                                                                                                                                        launcherModel2 = (LauncherModel)o;
                                                                                                                                                                                                                                                                                        try {
                                                                                                                                                                                                                                                                                            value5 = ((HashMap<K, AppWidgetProviderInfo>)launcherModel2).get(componentKey);
                                                                                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                                                                                appWidgetProviderInfo = value5;
                                                                                                                                                                                                                                                                                                try {
                                                                                                                                                                                                                                                                                                    validProvider = LauncherModel.isValidProvider(appWidgetProviderInfo);
                                                                                                                                                                                                                                                                                                    Label_3024: {
                                                                                                                                                                                                                                                                                                        if (safeMode || (n6 ^ 0x1) == 0x0 || !b8 || !(validProvider ^ true)) {
                                                                                                                                                                                                                                                                                                            break Label_3024;
                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                        try {
                                                                                                                                                                                                                                                                                                            append6 = new StringBuilder().append("Deleting widget that isn't installed anymore: ").append(appWidgetProviderInfo);
                                                                                                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                                                                                                loaderCursor.markDeleted(append6.toString());
                                                                                                                                                                                                                                                                                                                launcherModel = (LauncherModel)o;
                                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                                Label_3009:
                                                                                                                                                                                                                                                                                                                n6 = 0;
                                                                                                                                                                                                                                                                                                                continue Label_3002_Outer;
                                                                                                                                                                                                                                                                                                                // iftrue(Label_3215:, !validProvider)
                                                                                                                                                                                                                                                                                                                try {
                                                                                                                                                                                                                                                                                                                    launcherAppWidgetInfo = new LauncherAppWidgetInfo(int2, appWidgetProviderInfo.provider);
                                                                                                                                                                                                                                                                                                                    restoreStatus = (loaderCursor.restoreFlag & 0xFFFFFFF7);
                                                                                                                                                                                                                                                                                                                    Label_3205: {
                                                                                                                                                                                                                                                                                                                        if (!b8) {
                                                                                                                                                                                                                                                                                                                            if (!b7) {
                                                                                                                                                                                                                                                                                                                                break Label_3205;
                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                            restoreStatus |= 0x4;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        launcherAppWidgetInfo.restoreStatus = restoreStatus;
                                                                                                                                                                                                                                                                                                                        launcherAppWidgetInfo2 = launcherAppWidgetInfo;
                                                                                                                                                                                                                                                                                                                    Label_3432_Outer:
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
                                                                                                                                                                                                                                                                                                                                        continue Label_0721_Outer;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    Label_3536: {
                                                                                                                                                                                                                                                                                                                                        break Label_3536;
                                                                                                                                                                                                                                                                                                                                        Label_3215:
                                                                                                                                                                                                                                                                                                                                        s7 = "Launcher.Model";
                                                                                                                                                                                                                                                                                                                                        try {
                                                                                                                                                                                                                                                                                                                                            append7 = new StringBuilder().append("Widget restore pending id=").append(loaderCursor.id).append(" appWidgetId=").append(int2).append(" status =").append(loaderCursor.restoreFlag);
                                                                                                                                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                                                                                                                                Log.v(s7, append7.toString());
                                                                                                                                                                                                                                                                                                                                                launcherAppWidgetInfo3 = new LauncherAppWidgetInfo(int2, unflattenFromString);
                                                                                                                                                                                                                                                                                                                                                launcherAppWidgetInfo3.restoreStatus = loaderCursor.restoreFlag;
                                                                                                                                                                                                                                                                                                                                                value6 = updateAndGetActiveSessionCache.get(unflattenFromString.getPackageName());
                                                                                                                                                                                                                                                                                                                                                try {
                                                                                                                                                                                                                                                                                                                                                    n7 = value6;
                                                                                                                                                                                                                                                                                                                                                    Label_3526: {
                                                                                                                                                                                                                                                                                                                                                        while (true) {
                                                                                                                                                                                                                                                                                                                                                            Block_179: {
                                                                                                                                                                                                                                                                                                                                                                if (!loaderCursor.hasRestoreFlag(8)) {
                                                                                                                                                                                                                                                                                                                                                                    if (n7 != null) {
                                                                                                                                                                                                                                                                                                                                                                        launcherAppWidgetInfo3.restoreStatus |= 0x8;
                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                    else if (!safeMode) {
                                                                                                                                                                                                                                                                                                                                                                        break Block_179;
                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                if (n7 != null) {
                                                                                                                                                                                                                                                                                                                                                                    break Label_3526;
                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                intValue = 0;
                                                                                                                                                                                                                                                                                                                                                                launcherAppWidgetInfo3.installProgress = intValue;
                                                                                                                                                                                                                                                                                                                                                                launcherAppWidgetInfo2 = launcherAppWidgetInfo3;
                                                                                                                                                                                                                                                                                                                                                                continue Label_3432_Outer;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                                                                                                                                                append8 = new StringBuilder().append("Unrestored widget removed: ").append(unflattenFromString);
                                                                                                                                                                                                                                                                                                                                                                try {
                                                                                                                                                                                                                                                                                                                                                                    loaderCursor.markDeleted(append8.toString());
                                                                                                                                                                                                                                                                                                                                                                    continue Label_0721_Outer;
                                                                                                                                                                                                                                                                                                                                                                    intValue = n7;
                                                                                                                                                                                                                                                                                                                                                                    continue Label_2757_Outer;
                                                                                                                                                                                                                                                                                                                                                                    providerName = launcherAppWidgetInfo2.providerName;
                                                                                                                                                                                                                                                                                                                                                                    try {
                                                                                                                                                                                                                                                                                                                                                                        flattenToString = providerName.flattenToString();
                                                                                                                                                                                                                                                                                                                                                                        Label_3590: {
                                                                                                                                                                                                                                                                                                                                                                            if (!flattenToString.equals(string)) {
                                                                                                                                                                                                                                                                                                                                                                                break Label_3590;
                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                            restoreStatus2 = launcherAppWidgetInfo2.restoreStatus;
                                                                                                                                                                                                                                                                                                                                                                            try {
                                                                                                                                                                                                                                                                                                                                                                                if (restoreStatus2 == loaderCursor.restoreFlag) {
                                                                                                                                                                                                                                                                                                                                                                                    break Label_3649;
                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                put2 = loaderCursor.updater().put("appWidgetProvider", flattenToString);
                                                                                                                                                                                                                                                                                                                                                                                s8 = "restored";
                                                                                                                                                                                                                                                                                                                                                                                restoreStatus3 = launcherAppWidgetInfo2.restoreStatus;
                                                                                                                                                                                                                                                                                                                                                                                try {
                                                                                                                                                                                                                                                                                                                                                                                    put3 = put2.put(s8, Integer.valueOf(restoreStatus3));
                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                catch (Exception ex) {}
                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                            catch (Exception ex2) {}
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                    catch (Exception ex3) {}
                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                // iftrue(Label_3649:, n6 != 0)
                                                                                                                                                                                                                                                                                                                                                                catch (Exception ex4) {}
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            catch (Exception ex5) {}
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                catch (Exception ex6) {}
                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                            catch (Exception ex7) {}
                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                        catch (Exception ex8) {}
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    restoreStatus &= 0xFFFFFFFD;
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
                                                                                                                                                                                                                                                                                        catch (Exception ex16) {}
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    catch (Exception ex17) {}
                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                catch (Exception ex18) {}
                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                            catch (Exception ex19) {}
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        catch (Exception ex20) {}
                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                catch (Exception ex21) {}
                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                        // iftrue(Label_3009:, loaderCursor.itemType != 5)
                                                                                                                                                                                                                                                        catch (Exception ex22) {}
                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                    catch (Exception ex23) {}
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                catch (Exception ex24) {}
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                            catch (Exception ex25) {}
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                        catch (Exception ex26) {}
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    catch (Exception ex27) {}
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                            catch (Exception ex28) {}
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        catch (Exception ex29) {}
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    catch (Exception ex30) {}
                                                                                                                                                                                                                    b5 = false;
                                                                                                                                                                                                                    continue Label_1427_Outer;
                                                                                                                                                                                                                    b5 = false;
                                                                                                                                                                                                                }
                                                                                                                                                                                                                catch (Exception ex31) {}
                                                                                                                                                                                                            }
                                                                                                                                                                                                            catch (Exception ex32) {}
                                                                                                                                                                                                        }
                                                                                                                                                                                                        catch (Exception ex33) {}
                                                                                                                                                                                                    }
                                                                                                                                                                                                    catch (Exception ex34) {}
                                                                                                                                                                                                }
                                                                                                                                                                                                // iftrue(Label_1974:, !packageManagerHelper.isAppOnSdcard(s4, loaderCursor.user))
                                                                                                                                                                                                catch (Exception ex35) {}
                                                                                                                                                                                            }
                                                                                                                                                                                            catch (Exception ex36) {}
                                                                                                                                                                                        }
                                                                                                                                                                                        catch (Exception ex37) {}
                                                                                                                                                                                    }
                                                                                                                                                                                    // iftrue(Label_1882:, !updateAndGetActiveSessionCache.containsKey((Object)s4))
                                                                                                                                                                                    catch (Exception ex38) {}
                                                                                                                                                                                }
                                                                                                                                                                                catch (Exception ex39) {}
                                                                                                                                                                            }
                                                                                                                                                                            catch (Exception ex40) {}
                                                                                                                                                                        }
                                                                                                                                                                        // iftrue(Label_1773:, !loaderCursor.hasRestoreFlag(2))
                                                                                                                                                                        Block_81: {
                                                                                                                                                                            break Block_81;
                                                                                                                                                                            packageEnabledForProfile = true;
                                                                                                                                                                            continue Label_1226_Outer;
                                                                                                                                                                        }
                                                                                                                                                                        intent = packageManagerHelper.getAppLaunchIntent(s4, loaderCursor.user);
                                                                                                                                                                    }
                                                                                                                                                                    // iftrue(Label_1758:, intent == null)
                                                                                                                                                                    catch (Exception ex41) {}
                                                                                                                                                                    break;
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                            catch (Exception ex42) {}
                                                                                                                                                        }
                                                                                                                                                        catch (Exception ex43) {}
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    catch (Exception ex44) {}
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                        catch (Exception ex45) {}
                                                                                                                    }
                                                                                                                    catch (Exception ex46) {}
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
                                                                                        catch (Exception ex47) {}
                                                                                    }
                                                                                    catch (Exception ex48) {}
                                                                                }
                                                                                break;
                                                                            }
                                                                            case 4:
                                                                            case 5: {
                                                                                continue;
                                                                            }
                                                                        }
                                                                        break;
                                                                    }
                                                                    o = launcherModel;
                                                                }
                                                            }
                                                        }
                                                        finally {}
                                                    }
                                                    finally {}
                                                }
                                                catch (Exception ex49) {}
                                                try {
                                                    loaderCursor3 = loaderCursor;
                                                    user = (user2 = loaderCursor3.user);
                                                    if (user2 == null) {
                                                        s2 = "User has been deleted";
                                                        loaderCursor4 = loaderCursor;
                                                        s3 = s2;
                                                        loaderCursor4.markDeleted(s3);
                                                        continue Label_0830_Outer;
                                                    }
                                                    continue Label_1427_Outer;
                                                }
                                                catch (Exception ex50) {}
                                                break;
                                            }
                                            break;
                                        }
                                        put3.commit();
                                    }
                                    loaderCursor.checkAndAddItem(launcherAppWidgetInfo2, LauncherModel.sBgDataModel);
                                    continue;
                                }
                            }
                            intent2 = intent;
                            shortcutInfo = loadSimpleShortcut2;
                            n3 = n5;
                            continue Label_1427;
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
            LauncherModel.sBgDataModel.clear();
            // monitorexit(sBgDataModel)
            return;
        }
        if (loaderCursor.commitDeleted()) {
            for (final long longValue : (ArrayList<Object>)LauncherSettings$Settings.call(contentResolver, "delete_empty_folders").getSerializable("value")) {
                LauncherModel.sBgDataModel.workspaceItems.remove(LauncherModel.sBgDataModel.folders.get(longValue));
                LauncherModel.sBgDataModel.folders.remove(longValue);
                LauncherModel.sBgDataModel.itemsIdMap.remove(longValue);
            }
            LauncherSettings$Settings.call(contentResolver, "remove_ghost_widgets");
        }
        final HashSet pendingShortcuts = InstallShortcutReceiver.getPendingShortcuts(mContext);
        for (final ShortcutKey shortcutKey : hashMap.keySet()) {
            final MutableInt mutableInt = LauncherModel.sBgDataModel.pinnedShortcutCounts.get(shortcutKey);
            if ((mutableInt == null || mutableInt.value == 0) && (pendingShortcuts.contains(shortcutKey) ^ true)) {
                instance2.unpinShortcut(shortcutKey);
            }
        }
        for (final FolderInfo folderInfo : LauncherModel.sBgDataModel.folders) {
            Collections.sort((List<Object>)folderInfo.contents, Folder.ITEM_POS_COMPARATOR);
            int n8 = 0;
            for (final ShortcutInfo shortcutInfo3 : folderInfo.contents) {
                if (shortcutInfo3.usingLowResIcon && shortcutInfo3.itemType == 0) {
                    this.this$0.mIconCache.getTitleAndIcon(shortcutInfo3, false);
                }
                final int n9 = n8 + 1;
                if (n9 >= FolderIcon.NUM_ITEMS_IN_PREVIEW) {
                    break;
                }
                n8 = n9;
            }
        }
        loaderCursor.commitRestoredItems();
        if (!bootCompleted && (multiHashMap.isEmpty() ^ true)) {
            mContext.registerReceiver((BroadcastReceiver)new SdCardAvailableReceiver(this.this$0, this.mContext, multiHashMap), new IntentFilter("android.intent.action.BOOT_COMPLETED"), (String)null, LauncherModel.sWorker);
        }
        final ArrayList list = new ArrayList(LauncherModel.sBgDataModel.workspaceScreens);
        for (final ItemInfo itemInfo : LauncherModel.sBgDataModel.itemsIdMap) {
            final long screenId = itemInfo.screenId;
            if (itemInfo.container == -100 && list.contains(screenId)) {
                list.remove(screenId);
            }
        }
        if (list.size() != 0) {
            LauncherModel.sBgDataModel.workspaceScreens.removeAll(list);
            LauncherModel.updateWorkspaceScreenOrder(mContext, LauncherModel.sBgDataModel.workspaceScreens);
        }
    }
    // monitorexit(sBgDataModel)
    
    private void onlyBindAllApps() {
        final LauncherModel$Callbacks launcherModel$Callbacks = (LauncherModel$Callbacks)this.this$0.mCallbacks.get();
        if (launcherModel$Callbacks == null) {
            Log.w("Launcher.Model", "LoaderTask running with no launcher (onlyBindAllApps)");
            return;
        }
        this.this$0.runOnMainThread(new LauncherModel$LoaderTask$11(this, launcherModel$Callbacks, (ArrayList)this.this$0.mBgAllAppsList.data.clone()));
    }
    
    private void sortWorkspaceItemsSpatially(final ArrayList list) {
        final InvariantDeviceProfile invariantDeviceProfile = this.this$0.mApp.getInvariantDeviceProfile();
        Collections.sort((List<Object>)list, new LauncherModel$LoaderTask$3(this, invariantDeviceProfile.numRows * invariantDeviceProfile.numColumns, invariantDeviceProfile.numColumns));
    }
    
    private void updateIconCache() {
        HashSet<String> set = null;
    Label_0031_Outer:
        while (true) {
            set = new HashSet<String>();
            while (true) {
                Label_0120: {
                    synchronized (LauncherModel.sBgDataModel) {
                        for (final ItemInfo itemInfo : LauncherModel.sBgDataModel.itemsIdMap) {
                            if (!(itemInfo instanceof ShortcutInfo)) {
                                break Label_0120;
                            }
                            final ShortcutInfo shortcutInfo = (ShortcutInfo)itemInfo;
                            if (!shortcutInfo.isPromise() || shortcutInfo.getTargetComponent() == null) {
                                continue Label_0031_Outer;
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
        this.this$0.mIconCache.updateDbIcons(set);
    }
    
    private void verifyNotStopped() {
        synchronized (this) {
            if (this.mStopped) {
                throw new CancellationException("Loader stopped");
            }
        }
    }
    // monitorexit(this)
    
    private void waitForIdle() {
        synchronized (this) {
            this.this$0.mHandler.postIdle(new LauncherModel$LoaderTask$1(this));
            while (!this.mStopped && (this.mLoadAndBindStepFinished ^ true)) {
                final long n = 1000L;
                try {
                    this.wait(n);
                }
                catch (InterruptedException ex) {}
            }
        }
    }
    
    public void run() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //     4: astore_1       
        //     5: aload_1        
        //     6: getfield        com/android/launcher3/LauncherModel.mLock:Ljava/lang/Object;
        //     9: astore_2       
        //    10: aload_2        
        //    11: monitorenter   
        //    12: aload_0        
        //    13: getfield        com/android/launcher3/LauncherModel$LoaderTask.mStopped:Z
        //    16: istore_3       
        //    17: iload_3        
        //    18: ifeq            24
        //    21: aload_2        
        //    22: monitorexit    
        //    23: return         
        //    24: aload_0        
        //    25: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //    28: astore_1       
        //    29: iconst_1       
        //    30: istore          4
        //    32: aload_1        
        //    33: iload           4
        //    35: putfield        com/android/launcher3/LauncherModel.mIsLoaderTaskRunning:Z
        //    38: aload_2        
        //    39: monitorexit    
        //    40: iconst_1       
        //    41: istore_3       
        //    42: aload_0        
        //    43: iload_3        
        //    44: putfield        com/android/launcher3/LauncherModel$LoaderTask.mIsLoadingAndBindingWorkspace:Z
        //    47: aload_0        
        //    48: invokespecial   com/android/launcher3/LauncherModel$LoaderTask.loadWorkspace:()V
        //    51: aload_0        
        //    52: invokespecial   com/android/launcher3/LauncherModel$LoaderTask.verifyNotStopped:()V
        //    55: aload_0        
        //    56: getfield        com/android/launcher3/LauncherModel$LoaderTask.mPageToBindFirst:I
        //    59: istore_3       
        //    60: aload_0        
        //    61: iload_3        
        //    62: invokespecial   com/android/launcher3/LauncherModel$LoaderTask.bindWorkspace:(I)V
        //    65: aload_0        
        //    66: invokespecial   com/android/launcher3/LauncherModel$LoaderTask.waitForIdle:()V
        //    69: aload_0        
        //    70: invokespecial   com/android/launcher3/LauncherModel$LoaderTask.verifyNotStopped:()V
        //    73: aload_0        
        //    74: invokespecial   com/android/launcher3/LauncherModel$LoaderTask.loadAllApps:()V
        //    77: aload_0        
        //    78: invokespecial   com/android/launcher3/LauncherModel$LoaderTask.verifyNotStopped:()V
        //    81: aload_0        
        //    82: invokespecial   com/android/launcher3/LauncherModel$LoaderTask.updateIconCache:()V
        //    85: aload_0        
        //    86: invokespecial   com/android/launcher3/LauncherModel$LoaderTask.waitForIdle:()V
        //    89: aload_0        
        //    90: invokespecial   com/android/launcher3/LauncherModel$LoaderTask.verifyNotStopped:()V
        //    93: aload_0        
        //    94: invokespecial   com/android/launcher3/LauncherModel$LoaderTask.loadDeepShortcuts:()V
        //    97: aload_0        
        //    98: invokespecial   com/android/launcher3/LauncherModel$LoaderTask.verifyNotStopped:()V
        //   101: aload_0        
        //   102: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   105: astore_1       
        //   106: aload_1        
        //   107: invokevirtual   com/android/launcher3/LauncherModel.bindDeepShortcuts:()V
        //   110: aload_0        
        //   111: invokespecial   com/android/launcher3/LauncherModel$LoaderTask.waitForIdle:()V
        //   114: aload_0        
        //   115: invokespecial   com/android/launcher3/LauncherModel$LoaderTask.verifyNotStopped:()V
        //   118: aload_0        
        //   119: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   122: astore_1       
        //   123: aload_0        
        //   124: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   127: astore_2       
        //   128: aload_2        
        //   129: invokevirtual   com/android/launcher3/LauncherModel.getCallback:()Lcom/android/launcher3/LauncherModel$Callbacks;
        //   132: astore_2       
        //   133: iconst_0       
        //   134: istore          4
        //   136: aconst_null    
        //   137: astore          5
        //   139: aload_1        
        //   140: aload_2        
        //   141: iconst_0       
        //   142: aconst_null    
        //   143: invokevirtual   com/android/launcher3/LauncherModel.refreshAndBindWidgetsAndShortcuts:(Lcom/android/launcher3/LauncherModel$Callbacks;ZLcom/android/launcher3/util/PackageUserKey;)V
        //   146: aload_0        
        //   147: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   150: astore_1       
        //   151: aload_1        
        //   152: getfield        com/android/launcher3/LauncherModel.mLock:Ljava/lang/Object;
        //   155: astore_2       
        //   156: aload_2        
        //   157: monitorenter   
        //   158: aload_0        
        //   159: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   162: astore_1       
        //   163: iconst_1       
        //   164: istore          4
        //   166: aload_1        
        //   167: iload           4
        //   169: invokestatic    com/android/launcher3/LauncherModel.-set1:(Lcom/android/launcher3/LauncherModel;Z)Z
        //   172: pop            
        //   173: aload_0        
        //   174: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   177: astore_1       
        //   178: iconst_1       
        //   179: istore          4
        //   181: aload_1        
        //   182: iload           4
        //   184: putfield        com/android/launcher3/LauncherModel.mHasLoaderCompletedOnce:Z
        //   187: aload_2        
        //   188: monitorexit    
        //   189: aload_0        
        //   190: aconst_null    
        //   191: putfield        com/android/launcher3/LauncherModel$LoaderTask.mContext:Landroid/content/Context;
        //   194: aload_0        
        //   195: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   198: astore_1       
        //   199: aload_1        
        //   200: getfield        com/android/launcher3/LauncherModel.mLock:Ljava/lang/Object;
        //   203: astore_2       
        //   204: aload_2        
        //   205: monitorenter   
        //   206: aload_0        
        //   207: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   210: astore_1       
        //   211: aload_1        
        //   212: getfield        com/android/launcher3/LauncherModel.mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;
        //   215: astore_1       
        //   216: aload_1        
        //   217: aload_0        
        //   218: if_acmpne       237
        //   221: aload_0        
        //   222: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   225: astore_1       
        //   226: iconst_0       
        //   227: istore          4
        //   229: aconst_null    
        //   230: astore          5
        //   232: aload_1        
        //   233: aconst_null    
        //   234: putfield        com/android/launcher3/LauncherModel.mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;
        //   237: aload_0        
        //   238: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   241: astore_1       
        //   242: iconst_0       
        //   243: istore          4
        //   245: aconst_null    
        //   246: astore          5
        //   248: aload_1        
        //   249: iconst_0       
        //   250: putfield        com/android/launcher3/LauncherModel.mIsLoaderTaskRunning:Z
        //   253: aload_2        
        //   254: monitorexit    
        //   255: return         
        //   256: astore_1       
        //   257: aload_2        
        //   258: monitorexit    
        //   259: aload_1        
        //   260: athrow         
        //   261: astore_1       
        //   262: aload_2        
        //   263: monitorexit    
        //   264: aload_1        
        //   265: athrow         
        //   266: astore_1       
        //   267: aload_0        
        //   268: aconst_null    
        //   269: putfield        com/android/launcher3/LauncherModel$LoaderTask.mContext:Landroid/content/Context;
        //   272: aload_0        
        //   273: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   276: astore_1       
        //   277: aload_1        
        //   278: getfield        com/android/launcher3/LauncherModel.mLock:Ljava/lang/Object;
        //   281: astore_2       
        //   282: aload_2        
        //   283: monitorenter   
        //   284: aload_0        
        //   285: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   288: astore_1       
        //   289: aload_1        
        //   290: getfield        com/android/launcher3/LauncherModel.mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;
        //   293: astore_1       
        //   294: aload_1        
        //   295: aload_0        
        //   296: if_acmpne       315
        //   299: aload_0        
        //   300: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   303: astore_1       
        //   304: iconst_0       
        //   305: istore          4
        //   307: aconst_null    
        //   308: astore          5
        //   310: aload_1        
        //   311: aconst_null    
        //   312: putfield        com/android/launcher3/LauncherModel.mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;
        //   315: aload_0        
        //   316: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   319: astore_1       
        //   320: iconst_0       
        //   321: istore          4
        //   323: aconst_null    
        //   324: astore          5
        //   326: aload_1        
        //   327: iconst_0       
        //   328: putfield        com/android/launcher3/LauncherModel.mIsLoaderTaskRunning:Z
        //   331: goto            253
        //   334: astore_1       
        //   335: aload_2        
        //   336: monitorexit    
        //   337: aload_1        
        //   338: athrow         
        //   339: astore_1       
        //   340: aload_2        
        //   341: monitorexit    
        //   342: aload_1        
        //   343: athrow         
        //   344: astore_1       
        //   345: aload_0        
        //   346: aconst_null    
        //   347: putfield        com/android/launcher3/LauncherModel$LoaderTask.mContext:Landroid/content/Context;
        //   350: aload_0        
        //   351: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   354: getfield        com/android/launcher3/LauncherModel.mLock:Ljava/lang/Object;
        //   357: astore_2       
        //   358: aload_2        
        //   359: monitorenter   
        //   360: aload_0        
        //   361: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   364: astore          5
        //   366: aload           5
        //   368: getfield        com/android/launcher3/LauncherModel.mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;
        //   371: astore          5
        //   373: aload           5
        //   375: aload_0        
        //   376: if_acmpne       391
        //   379: aload_0        
        //   380: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   383: astore          5
        //   385: aload           5
        //   387: aconst_null    
        //   388: putfield        com/android/launcher3/LauncherModel.mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;
        //   391: aload_0        
        //   392: getfield        com/android/launcher3/LauncherModel$LoaderTask.this$0:Lcom/android/launcher3/LauncherModel;
        //   395: astore          5
        //   397: aload           5
        //   399: iconst_0       
        //   400: putfield        com/android/launcher3/LauncherModel.mIsLoaderTaskRunning:Z
        //   403: aload_2        
        //   404: monitorexit    
        //   405: aload_1        
        //   406: athrow         
        //   407: astore_1       
        //   408: aload_2        
        //   409: monitorexit    
        //   410: aload_1        
        //   411: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                        
        //  -----  -----  -----  -----  --------------------------------------------
        //  12     16     256    261    Any
        //  24     28     256    261    Any
        //  33     38     256    261    Any
        //  43     47     266    339    Ljava/util/concurrent/CancellationException;
        //  43     47     344    412    Any
        //  47     51     266    339    Ljava/util/concurrent/CancellationException;
        //  47     51     344    412    Any
        //  51     55     266    339    Ljava/util/concurrent/CancellationException;
        //  51     55     344    412    Any
        //  55     59     266    339    Ljava/util/concurrent/CancellationException;
        //  55     59     344    412    Any
        //  61     65     266    339    Ljava/util/concurrent/CancellationException;
        //  61     65     344    412    Any
        //  65     69     266    339    Ljava/util/concurrent/CancellationException;
        //  65     69     344    412    Any
        //  69     73     266    339    Ljava/util/concurrent/CancellationException;
        //  69     73     344    412    Any
        //  73     77     266    339    Ljava/util/concurrent/CancellationException;
        //  73     77     344    412    Any
        //  77     81     266    339    Ljava/util/concurrent/CancellationException;
        //  77     81     344    412    Any
        //  81     85     266    339    Ljava/util/concurrent/CancellationException;
        //  81     85     344    412    Any
        //  85     89     266    339    Ljava/util/concurrent/CancellationException;
        //  85     89     344    412    Any
        //  89     93     266    339    Ljava/util/concurrent/CancellationException;
        //  89     93     344    412    Any
        //  93     97     266    339    Ljava/util/concurrent/CancellationException;
        //  93     97     344    412    Any
        //  97     101    266    339    Ljava/util/concurrent/CancellationException;
        //  97     101    344    412    Any
        //  101    105    266    339    Ljava/util/concurrent/CancellationException;
        //  101    105    344    412    Any
        //  106    110    266    339    Ljava/util/concurrent/CancellationException;
        //  106    110    344    412    Any
        //  110    114    266    339    Ljava/util/concurrent/CancellationException;
        //  110    114    344    412    Any
        //  114    118    266    339    Ljava/util/concurrent/CancellationException;
        //  114    118    344    412    Any
        //  118    122    266    339    Ljava/util/concurrent/CancellationException;
        //  118    122    344    412    Any
        //  123    127    266    339    Ljava/util/concurrent/CancellationException;
        //  123    127    344    412    Any
        //  128    132    266    339    Ljava/util/concurrent/CancellationException;
        //  128    132    344    412    Any
        //  142    146    266    339    Ljava/util/concurrent/CancellationException;
        //  142    146    344    412    Any
        //  146    150    266    339    Ljava/util/concurrent/CancellationException;
        //  146    150    344    412    Any
        //  151    155    266    339    Ljava/util/concurrent/CancellationException;
        //  151    155    344    412    Any
        //  156    158    266    339    Ljava/util/concurrent/CancellationException;
        //  156    158    344    412    Any
        //  158    162    261    266    Any
        //  167    173    261    266    Any
        //  173    177    261    266    Any
        //  182    187    261    266    Any
        //  187    189    266    339    Ljava/util/concurrent/CancellationException;
        //  187    189    344    412    Any
        //  206    210    339    344    Any
        //  211    215    339    344    Any
        //  221    225    339    344    Any
        //  233    237    339    344    Any
        //  237    241    339    344    Any
        //  249    253    339    344    Any
        //  262    264    266    339    Ljava/util/concurrent/CancellationException;
        //  262    264    344    412    Any
        //  264    266    266    339    Ljava/util/concurrent/CancellationException;
        //  264    266    344    412    Any
        //  284    288    334    339    Any
        //  289    293    334    339    Any
        //  299    303    334    339    Any
        //  311    315    334    339    Any
        //  315    319    334    339    Any
        //  327    331    334    339    Any
        //  360    364    407    412    Any
        //  366    371    407    412    Any
        //  379    383    407    412    Any
        //  387    391    407    412    Any
        //  391    395    407    412    Any
        //  399    403    407    412    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 258, Size: 258
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3303)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3551)
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
    
    void runBindSynchronousPage(final int n) {
        if (n == -1001) {
            throw new RuntimeException("Should not call runBindSynchronousPage() without valid page index");
        }
        if (!this.this$0.mModelLoaded) {
            throw new RuntimeException("Expecting AllApps and Workspace to be loaded");
        }
        final LauncherModel this$0 = this.this$0;
        synchronized (this$0.mLock) {
            if (this.this$0.mIsLoaderTaskRunning) {
                throw new RuntimeException("Error! Background loading is already running");
            }
        }
        // monitorexit(o)
        this.this$0.mHandler.flush();
        this.bindWorkspace(n);
        this.onlyBindAllApps();
        this.this$0.bindDeepShortcuts();
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
    
    LauncherModel$Callbacks tryGetCallbacks(final LauncherModel$Callbacks launcherModel$Callbacks) {
        final LauncherModel this$0 = this.this$0;
        synchronized (this$0.mLock) {
            if (this.mStopped) {
                return null;
            }
            if (this.this$0.mCallbacks == null) {
                return null;
            }
            final LauncherModel$Callbacks launcherModel$Callbacks2 = (LauncherModel$Callbacks)this.this$0.mCallbacks.get();
            if (launcherModel$Callbacks2 != launcherModel$Callbacks) {
                return null;
            }
            if (launcherModel$Callbacks2 == null) {
                Log.w("Launcher.Model", "no mCallbacks");
                return null;
            }
            return launcherModel$Callbacks2;
        }
    }
}
