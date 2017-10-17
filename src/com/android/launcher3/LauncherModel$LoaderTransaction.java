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
import java.lang.ref.WeakReference;
import android.os.HandlerThread;
import android.os.Handler;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.compat.LauncherAppsCompat$OnAppsChangedCallbackCompat;
import android.content.BroadcastReceiver;
import java.util.concurrent.CancellationException;
import com.android.launcher3.model.LoaderTask;

public class LauncherModel$LoaderTransaction implements AutoCloseable
{
    private final LoaderTask mTask;
    final /* synthetic */ LauncherModel this$0;
    
    private LauncherModel$LoaderTransaction(final LauncherModel this$0, final LoaderTask mTask) {
        this.this$0 = this$0;
        synchronized (this$0.mLock) {
            if (this$0.mLoaderTask != mTask) {
                throw new CancellationException("Loader already stopped");
            }
        }
        this.mTask = mTask;
        this$0.mIsLoaderTaskRunning = true;
        this$0.mModelLoaded = false;
    }
    // monitorexit(o)
    
    public void close() {
        final LauncherModel this$0 = this.this$0;
        synchronized (this$0.mLock) {
            if (this.this$0.mLoaderTask == this.mTask) {
                this.this$0.mLoaderTask = null;
            }
            this.this$0.mIsLoaderTaskRunning = false;
        }
    }
    
    public void commit() {
        final LauncherModel this$0 = this.this$0;
        synchronized (this$0.mLock) {
            this.this$0.mModelLoaded = true;
        }
    }
}
