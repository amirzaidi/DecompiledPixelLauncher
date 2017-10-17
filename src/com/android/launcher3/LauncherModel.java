// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import com.android.launcher3.model.PackageInstallStateChangedTask;
import com.android.launcher3.compat.PackageInstallerCompat$PackageInstallInfo;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.model.ShortcutsChangedTask;
import com.android.launcher3.dynamicui.ExtractionUtils;
import com.android.launcher3.model.UserLockStateChangedTask;
import android.content.Intent;
import com.android.launcher3.model.CacheDataUpdatedTask;
import java.util.HashSet;
import com.android.launcher3.model.PackageUpdatedTask;
import android.os.UserHandle;
import com.android.launcher3.util.Preconditions;
import com.android.launcher3.model.ModelWriter;
import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import java.util.List;
import com.android.launcher3.model.AddWorkspaceItemsTask;
import com.android.launcher3.util.Provider;
import java.util.Iterator;
import android.net.Uri;
import android.content.ContentResolver;
import java.util.Collection;
import android.os.Process;
import com.android.launcher3.provider.LauncherDbUtils;
import android.appwidget.AppWidgetProviderInfo;
import android.os.Looper;
import android.content.Context;
import com.android.launcher3.compat.UserManagerCompat;
import com.android.launcher3.compat.LauncherAppsCompat;
import java.lang.ref.WeakReference;
import com.android.launcher3.model.WidgetsModel;
import android.os.HandlerThread;
import android.os.Handler;
import com.android.launcher3.model.BgDataModel;
import java.util.ArrayList;
import com.android.launcher3.compat.LauncherAppsCompat$OnAppsChangedCallbackCompat;
import android.content.BroadcastReceiver;

public class LauncherModel extends BroadcastReceiver implements LauncherAppsCompat$OnAppsChangedCallbackCompat
{
    static final ArrayList mBindCompleteRunnables;
    static final BgDataModel sBgDataModel;
    static final Handler sWorker;
    static final HandlerThread sWorkerThread;
    final LauncherAppState mApp;
    private final AllAppsList mBgAllAppsList;
    private final WidgetsModel mBgWidgetsModel;
    WeakReference mCallbacks;
    DeferredHandler mHandler;
    boolean mHasLoaderCompletedOnce;
    private boolean mHasShortcutHostPermission;
    private final IconCache mIconCache;
    boolean mIsLoaderTaskRunning;
    private final LauncherAppsCompat mLauncherApps;
    LauncherModel$LoaderTask mLoaderTask;
    final Object mLock;
    private boolean mModelLoaded;
    private final Runnable mShortcutPermissionCheckRunnable;
    private final UserManagerCompat mUserManager;
    
    static {
        (sWorkerThread = new HandlerThread("launcher-loader")).start();
        sWorker = new Handler(LauncherModel.sWorkerThread.getLooper());
        mBindCompleteRunnables = new ArrayList();
        sBgDataModel = new BgDataModel();
    }
    
    LauncherModel(final LauncherAppState mApp, final IconCache mIconCache, final AppFilter appFilter) {
        this.mLock = new Object();
        this.mHandler = new DeferredHandler();
        this.mShortcutPermissionCheckRunnable = new LauncherModel$1(this);
        final Context context = mApp.getContext();
        this.mApp = mApp;
        this.mBgAllAppsList = new AllAppsList(mIconCache, appFilter);
        this.mBgWidgetsModel = new WidgetsModel(mIconCache, appFilter);
        this.mIconCache = mIconCache;
        this.mLauncherApps = LauncherAppsCompat.getInstance(context);
        this.mUserManager = UserManagerCompat.getInstance(context);
    }
    
    private void bindWidgetsModel(final LauncherModel$Callbacks launcherModel$Callbacks) {
        this.mHandler.post(new LauncherModel$8(this, launcherModel$Callbacks, this.mBgWidgetsModel.getWidgetsMap().clone()));
    }
    
    static void checkItemInfo(final ItemInfo itemInfo) {
        runOnWorkerThread(new LauncherModel$2(itemInfo.id, itemInfo, new Throwable().getStackTrace()));
    }
    
    static void checkItemInfoLocked(final long n, final ItemInfo itemInfo, final StackTraceElement[] stackTrace) {
        final ItemInfo itemInfo2 = (ItemInfo)LauncherModel.sBgDataModel.itemsIdMap.get(n);
        if (itemInfo2 != null && itemInfo != itemInfo2) {
            if (itemInfo2 instanceof ShortcutInfo && itemInfo instanceof ShortcutInfo) {
                final ShortcutInfo shortcutInfo = (ShortcutInfo)itemInfo2;
                final ShortcutInfo shortcutInfo2 = (ShortcutInfo)itemInfo;
                if (shortcutInfo.title.toString().equals(shortcutInfo2.title.toString()) && shortcutInfo.intent.filterEquals(shortcutInfo2.intent) && shortcutInfo.id == shortcutInfo2.id && shortcutInfo.itemType == shortcutInfo2.itemType && shortcutInfo.container == shortcutInfo2.container && shortcutInfo.screenId == shortcutInfo2.screenId && shortcutInfo.cellX == shortcutInfo2.cellX && shortcutInfo.cellY == shortcutInfo2.cellY && shortcutInfo.spanX == shortcutInfo2.spanX && shortcutInfo.spanY == shortcutInfo2.spanY) {
                    return;
                }
            }
            final StringBuilder append = new StringBuilder().append("item: ");
            String string;
            if (itemInfo != null) {
                string = itemInfo.toString();
            }
            else {
                string = "null";
            }
            final StringBuilder append2 = append.append(string).append("modelItem: ");
            String string2;
            if (itemInfo2 != null) {
                string2 = ((ShortcutInfo)itemInfo2).toString();
            }
            else {
                string2 = "null";
            }
            final RuntimeException ex = new RuntimeException(append2.append(string2).append("Error: ItemInfo passed to checkItemInfo doesn't match original").toString());
            if (stackTrace != null) {
                ex.setStackTrace(stackTrace);
            }
            throw ex;
        }
    }
    
    public static Looper getWorkerLooper() {
        return LauncherModel.sWorkerThread.getLooper();
    }
    
    static boolean isValidProvider(final AppWidgetProviderInfo appWidgetProviderInfo) {
        boolean b = false;
        if (appWidgetProviderInfo != null && appWidgetProviderInfo.provider != null && appWidgetProviderInfo.provider.getPackageName() != null) {
            b = true;
        }
        return b;
    }
    
    public static ArrayList loadWorkspaceScreensDb(final Context context) {
        return LauncherDbUtils.getScreenIdsFromCursor(context.getContentResolver().query(LauncherSettings$WorkspaceScreens.CONTENT_URI, (String[])null, (String)null, (String[])null, "screenRank"));
    }
    
    private void runOnMainThread(final Runnable runnable) {
        if (LauncherModel.sWorkerThread.getThreadId() == Process.myTid()) {
            this.mHandler.post(runnable);
        }
        else {
            runnable.run();
        }
    }
    
    private static void runOnWorkerThread(final Runnable runnable) {
        if (LauncherModel.sWorkerThread.getThreadId() == Process.myTid()) {
            runnable.run();
        }
        else {
            LauncherModel.sWorker.post(runnable);
        }
    }
    
    private void stopLoaderLocked() {
        final LauncherModel$LoaderTask mLoaderTask = this.mLoaderTask;
        if (mLoaderTask != null) {
            mLoaderTask.stopLocked();
        }
    }
    
    public static void updateWorkspaceScreenOrder(final Context context, final ArrayList list) {
        final ArrayList<Long> list2 = new ArrayList<Long>(list);
        final ContentResolver contentResolver = context.getContentResolver();
        final Uri content_URI = LauncherSettings$WorkspaceScreens.CONTENT_URI;
        final Iterator<Long> iterator = list2.iterator();
        while (iterator.hasNext()) {
            if (iterator.next() < 0L) {
                iterator.remove();
            }
        }
        runOnWorkerThread(new LauncherModel$3(content_URI, list2, contentResolver));
    }
    
    public void addAndBindAddedWorkspaceItems(final Provider provider) {
        this.enqueueModelUpdateTask(new AddWorkspaceItemsTask(provider));
    }
    
    public void addAndBindAddedWorkspaceItems(final List list) {
        this.addAndBindAddedWorkspaceItems(Provider.of(list));
    }
    
    public void bindDeepShortcuts() {
        this.runOnMainThread(new LauncherModel$5(this, LauncherModel.sBgDataModel.deepShortcutMap.clone()));
    }
    
    public void dumpState(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        if (array.length > 0 && TextUtils.equals((CharSequence)array[0], (CharSequence)"--all")) {
            printWriter.println(s + "All apps list: size=" + this.mBgAllAppsList.data.size());
            for (final AppInfo appInfo : this.mBgAllAppsList.data) {
                printWriter.println(s + "   title=\"" + appInfo.title + "\" iconBitmap=" + appInfo.iconBitmap + " componentName=" + appInfo.componentName.getPackageName());
            }
        }
        LauncherModel.sBgDataModel.dump(s, fileDescriptor, printWriter, array);
    }
    
    void enqueueModelUpdateTask(final LauncherModel$BaseModelUpdateTask launcherModel$BaseModelUpdateTask) {
        if (!this.mModelLoaded && this.mLoaderTask == null) {
            return;
        }
        launcherModel$BaseModelUpdateTask.init(this);
        runOnWorkerThread(launcherModel$BaseModelUpdateTask);
    }
    
    public FolderInfo findFolderById(final Long n) {
        synchronized (LauncherModel.sBgDataModel) {
            return (FolderInfo)LauncherModel.sBgDataModel.folders.get((long)n);
        }
    }
    
    public void forceReload() {
        synchronized (this.mLock) {
            this.stopLoaderLocked();
            this.mModelLoaded = false;
            // monitorexit(this.mLock)
            this.startLoaderFromBackground();
        }
    }
    
    public LauncherModel$Callbacks getCallback() {
        LauncherModel$Callbacks launcherModel$Callbacks = null;
        if (this.mCallbacks != null) {
            launcherModel$Callbacks = (LauncherModel$Callbacks)this.mCallbacks.get();
        }
        return launcherModel$Callbacks;
    }
    
    public ModelWriter getWriter(final boolean b) {
        return new ModelWriter(this.mApp.getContext(), LauncherModel.sBgDataModel, b);
    }
    
    public void initialize(final LauncherModel$Callbacks launcherModel$Callbacks) {
        synchronized (this.mLock) {
            Preconditions.assertUIThread();
            this.mHandler.cancelAll();
            this.mCallbacks = new WeakReference((T)launcherModel$Callbacks);
        }
    }
    
    public boolean isCurrentCallbacks(final LauncherModel$Callbacks launcherModel$Callbacks) {
        boolean b = false;
        if (this.mCallbacks != null && this.mCallbacks.get() == launcherModel$Callbacks) {
            b = true;
        }
        return b;
    }
    
    public boolean isModelLoaded() {
        boolean b = false;
        synchronized (this.mLock) {
            if (this.mModelLoaded && this.mLoaderTask == null) {
                b = true;
            }
            return b;
        }
    }
    
    public void onPackageAdded(final String s, final UserHandle userHandle) {
        final int n = 1;
        final String[] array = new String[n];
        array[0] = s;
        this.enqueueModelUpdateTask(new PackageUpdatedTask(n, userHandle, array));
    }
    
    public void onPackageChanged(final String s, final UserHandle userHandle) {
        this.enqueueModelUpdateTask(new PackageUpdatedTask(2, userHandle, new String[] { s }));
    }
    
    public void onPackageIconsUpdated(final HashSet set, final UserHandle userHandle) {
        this.enqueueModelUpdateTask(new CacheDataUpdatedTask(1, userHandle, set));
    }
    
    public void onPackageRemoved(final String s, final UserHandle userHandle) {
        this.onPackagesRemoved(userHandle, s);
    }
    
    public void onPackagesAvailable(final String[] array, final UserHandle userHandle, final boolean b) {
        this.enqueueModelUpdateTask(new PackageUpdatedTask(2, userHandle, array));
    }
    
    public void onPackagesRemoved(final UserHandle userHandle, final String... array) {
        this.enqueueModelUpdateTask(new PackageUpdatedTask(3, userHandle, array));
    }
    
    public void onPackagesSuspended(final String[] array, final UserHandle userHandle) {
        this.enqueueModelUpdateTask(new PackageUpdatedTask(5, userHandle, array));
    }
    
    public void onPackagesUnavailable(final String[] array, final UserHandle userHandle, final boolean b) {
        if (!b) {
            this.enqueueModelUpdateTask(new PackageUpdatedTask(4, userHandle, array));
        }
    }
    
    public void onPackagesUnsuspended(final String[] array, final UserHandle userHandle) {
        this.enqueueModelUpdateTask(new PackageUpdatedTask(6, userHandle, array));
    }
    
    public void onReceive(final Context context, final Intent intent) {
        final String action = intent.getAction();
        if ("android.intent.action.LOCALE_CHANGED".equals(action)) {
            this.forceReload();
        }
        else if ("android.intent.action.MANAGED_PROFILE_ADDED".equals(action) || "android.intent.action.MANAGED_PROFILE_REMOVED".equals(action)) {
            UserManagerCompat.getInstance(context).enableAndResetCache();
            this.forceReload();
        }
        else if ("android.intent.action.MANAGED_PROFILE_AVAILABLE".equals(action) || "android.intent.action.MANAGED_PROFILE_UNAVAILABLE".equals(action) || "android.intent.action.MANAGED_PROFILE_UNLOCKED".equals(action)) {
            final UserHandle userHandle = (UserHandle)intent.getParcelableExtra("android.intent.extra.USER");
            if (userHandle != null) {
                if ("android.intent.action.MANAGED_PROFILE_AVAILABLE".equals(action) || "android.intent.action.MANAGED_PROFILE_UNAVAILABLE".equals(action)) {
                    this.enqueueModelUpdateTask(new PackageUpdatedTask(7, userHandle, new String[0]));
                }
                if ("android.intent.action.MANAGED_PROFILE_UNAVAILABLE".equals(action) || "android.intent.action.MANAGED_PROFILE_UNLOCKED".equals(action)) {
                    this.enqueueModelUpdateTask(new UserLockStateChangedTask(userHandle));
                }
            }
        }
        else if ("android.intent.action.WALLPAPER_CHANGED".equals(action)) {
            ExtractionUtils.startColorExtractionServiceIfNecessary(context);
        }
    }
    
    public void onShortcutsChanged(final String s, final List list, final UserHandle userHandle) {
        this.enqueueModelUpdateTask(new ShortcutsChangedTask(s, list, userHandle, true));
    }
    
    public void refreshAndBindWidgetsAndShortcuts(final LauncherModel$Callbacks launcherModel$Callbacks, final boolean b, final PackageUserKey packageUserKey) {
        runOnWorkerThread(new LauncherModel$9(this, b, launcherModel$Callbacks, packageUserKey));
    }
    
    public void refreshShortcutsIfRequired() {
        if (Utilities.ATLEAST_NOUGAT_MR1) {
            LauncherModel.sWorker.removeCallbacks(this.mShortcutPermissionCheckRunnable);
            LauncherModel.sWorker.post(this.mShortcutPermissionCheckRunnable);
        }
    }
    
    public void setPackageState(final PackageInstallerCompat$PackageInstallInfo packageInstallerCompat$PackageInstallInfo) {
        this.enqueueModelUpdateTask(new PackageInstallStateChangedTask(packageInstallerCompat$PackageInstallInfo));
    }
    
    public boolean startLoader(final int n) {
        InstallShortcutReceiver.enableInstallQueue();
        synchronized (this.mLock) {
            if (this.mCallbacks != null && this.mCallbacks.get() != null) {
                this.runOnMainThread(new LauncherModel$4(this, (LauncherModel$Callbacks)this.mCallbacks.get()));
                this.stopLoaderLocked();
                this.mLoaderTask = new LauncherModel$LoaderTask(this, this.mApp.getContext(), n);
                if (n != -1001 && this.mModelLoaded && (this.mIsLoaderTaskRunning ^ true)) {
                    this.mLoaderTask.runBindSynchronousPage(n);
                    return true;
                }
                LauncherModel.sWorkerThread.setPriority(5);
                LauncherModel.sWorker.post((Runnable)this.mLoaderTask);
            }
            return false;
        }
    }
    
    public void startLoaderFromBackground() {
        final LauncherModel$Callbacks callback = this.getCallback();
        if (callback != null && !callback.setLoadOnResume()) {
            this.startLoader(callback.getCurrentWorkspaceScreen());
        }
    }
    
    public void stopLoader() {
        synchronized (this.mLock) {
            if (this.mLoaderTask != null) {
                this.mLoaderTask.stopLocked();
            }
        }
    }
    
    public void updateAndBindShortcutInfo(final ShortcutInfo shortcutInfo, final ShortcutInfoCompat shortcutInfoCompat) {
        this.updateAndBindShortcutInfo(new LauncherModel$6(this, shortcutInfo, shortcutInfoCompat));
    }
    
    public void updateAndBindShortcutInfo(final Provider provider) {
        this.enqueueModelUpdateTask(new LauncherModel$7(this, provider));
    }
    
    public void updatePinnedShortcuts(final String s, final List list, final UserHandle userHandle) {
        this.enqueueModelUpdateTask(new ShortcutsChangedTask(s, list, userHandle, false));
    }
    
    public void updateSessionDisplayInfo(final String s) {
        final HashSet<String> set = new HashSet<String>();
        set.add(s);
        this.enqueueModelUpdateTask(new CacheDataUpdatedTask(2, Process.myUserHandle(), set));
    }
}
