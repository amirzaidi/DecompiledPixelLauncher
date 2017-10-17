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
import com.android.launcher3.compat.LauncherAppsCompat$OnAppsChangedCallbackCompat;
import android.content.BroadcastReceiver;
import java.util.ArrayList;
import java.util.Iterator;

final class LauncherModel$LoaderTask$9 implements Runnable
{
    final /* synthetic */ LauncherModel$LoaderTask this$1;
    final /* synthetic */ LauncherModel$Callbacks val$oldCallbacks;
    final /* synthetic */ long val$t;
    
    LauncherModel$LoaderTask$9(final LauncherModel$LoaderTask this$1, final LauncherModel$Callbacks val$oldCallbacks, final long val$t) {
        this.this$1 = this$1;
        this.val$oldCallbacks = val$oldCallbacks;
        this.val$t = val$t;
    }
    
    public void run() {
        final LauncherModel$Callbacks tryGetCallbacks = this.this$1.tryGetCallbacks(this.val$oldCallbacks);
        if (tryGetCallbacks != null) {
            tryGetCallbacks.finishBindingItems();
        }
        this.this$1.mIsLoadingAndBindingWorkspace = false;
        if (!LauncherModel.mBindCompleteRunnables.isEmpty()) {
            synchronized (LauncherModel.mBindCompleteRunnables) {
                final Iterator iterator = LauncherModel.mBindCompleteRunnables.iterator();
                while (iterator.hasNext()) {
                    runOnWorkerThread(iterator.next());
                }
            }
            LauncherModel.mBindCompleteRunnables.clear();
        }
        // monitorexit(list)
    }
}
