// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import com.android.launcher3.model.LoaderResults;
import com.android.launcher3.model.PackageInstallStateChangedTask;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.model.ShortcutsChangedTask;
import java.util.List;
import com.android.launcher3.dynamicui.ExtractionUtils;
import com.android.launcher3.model.UserLockStateChangedTask;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.Intent;
import com.android.launcher3.model.CacheDataUpdatedTask;
import java.util.HashSet;
import com.android.launcher3.model.PackageUpdatedTask;
import android.os.UserHandle;
import com.android.launcher3.compat.PackageInstallerCompat$PackageInstallInfo;
import com.android.launcher3.util.Preconditions;
import com.android.launcher3.model.ModelWriter;
import java.util.concurrent.Executor;
import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import com.android.launcher3.model.AddWorkspaceItemsTask;
import com.android.launcher3.util.Provider;
import java.util.Iterator;
import android.net.Uri;
import android.content.ContentResolver;
import java.util.Collection;
import android.os.Process;
import com.android.launcher3.provider.LauncherDbUtils;
import java.util.ArrayList;
import android.content.Context;
import android.os.Looper;
import com.android.launcher3.model.LoaderTask;
import java.lang.ref.WeakReference;
import android.os.HandlerThread;
import android.os.Handler;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.compat.LauncherAppsCompat$OnAppsChangedCallbackCompat;
import android.content.BroadcastReceiver;

public class LauncherModel extends BroadcastReceiver implements LauncherAppsCompat$OnAppsChangedCallbackCompat
{
    static final BgDataModel sBgDataModel;
    static final Handler sWorker;
    static final HandlerThread sWorkerThread;
    final LauncherAppState mApp;
    private final AllAppsList mBgAllAppsList;
    WeakReference mCallbacks;
    boolean mIsLoaderTaskRunning;
    LoaderTask mLoaderTask;
    final Object mLock;
    private boolean mModelLoaded;
    private final Runnable mShortcutPermissionCheckRunnable;
    private final MainThreadExecutor mUiExecutor;
    
    static {
        (sWorkerThread = new HandlerThread("launcher-loader")).start();
        sWorker = new Handler(LauncherModel.sWorkerThread.getLooper());
        sBgDataModel = new BgDataModel();
    }
    
    LauncherModel(final LauncherAppState mApp, final IconCache iconCache, final AppFilter appFilter) {
        this.mUiExecutor = new MainThreadExecutor();
        this.mLock = new Object();
        this.mShortcutPermissionCheckRunnable = new LauncherModel$1(this);
        this.mApp = mApp;
        this.mBgAllAppsList = new AllAppsList(iconCache, appFilter);
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
    
    public static ArrayList loadWorkspaceScreensDb(final Context context) {
        return LauncherDbUtils.getScreenIdsFromCursor(context.getContentResolver().query(LauncherSettings$WorkspaceScreens.CONTENT_URI, (String[])null, (String)null, (String[])null, "screenRank"));
    }
    
    private static void runOnWorkerThread(final Runnable runnable) {
        if (LauncherModel.sWorkerThread.getThreadId() == Process.myTid()) {
            runnable.run();
        }
        else {
            LauncherModel.sWorker.post(runnable);
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
    
    public LauncherModel$LoaderTransaction beginLoader(final LoaderTask loaderTask) {
        return new LauncherModel$LoaderTransaction(this, loaderTask, null);
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
    
    public void enqueueModelUpdateTask(final LauncherModel$ModelUpdateTask launcherModel$ModelUpdateTask) {
        launcherModel$ModelUpdateTask.init(this.mApp, this, LauncherModel.sBgDataModel, this.mBgAllAppsList, this.mUiExecutor);
        runOnWorkerThread(launcherModel$ModelUpdateTask);
    }
    
    public void forceReload() {
        synchronized (this.mLock) {
            this.stopLoader();
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
    
    public void onInstallSessionCreated(final PackageInstallerCompat$PackageInstallInfo packageInstallerCompat$PackageInstallInfo) {
        this.enqueueModelUpdateTask(new LauncherModel$5(this, packageInstallerCompat$PackageInstallInfo));
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
    
    public void refreshAndBindWidgetsAndShortcuts(final PackageUserKey packageUserKey) {
        this.enqueueModelUpdateTask(new LauncherModel$8(this, packageUserKey));
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
        InstallShortcutReceiver.enableInstallQueue(2);
        synchronized (this.mLock) {
            if (this.mCallbacks != null && this.mCallbacks.get() != null) {
                this.mUiExecutor.execute(new LauncherModel$4(this, (LauncherModel$Callbacks)this.mCallbacks.get()));
                this.stopLoader();
                final LoaderResults loaderResults = new LoaderResults(this.mApp, LauncherModel.sBgDataModel, this.mBgAllAppsList, n, this.mCallbacks);
                if (this.mModelLoaded && (this.mIsLoaderTaskRunning ^ true)) {
                    loaderResults.bindWorkspace();
                    loaderResults.bindAllApps();
                    loaderResults.bindDeepShortcuts();
                    loaderResults.bindWidgets();
                    return true;
                }
                this.startLoaderForResults(loaderResults);
            }
            return false;
        }
    }
    
    public void startLoaderForResults(final LoaderResults loaderResults) {
        synchronized (this.mLock) {
            this.stopLoader();
            runOnWorkerThread(this.mLoaderTask = new LoaderTask(this.mApp, this.mBgAllAppsList, LauncherModel.sBgDataModel, loaderResults));
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
            final LoaderTask mLoaderTask = this.mLoaderTask;
            this.mLoaderTask = null;
            if (mLoaderTask != null) {
                mLoaderTask.stopLocked();
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
