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
import com.android.launcher3.shortcuts.DeepShortcutManager;

final class LauncherModel$1 implements Runnable
{
    final /* synthetic */ LauncherModel this$0;
    
    LauncherModel$1(final LauncherModel this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        if (this.this$0.mModelLoaded && DeepShortcutManager.getInstance(this.this$0.mApp.getContext()).hasHostPermission() != this.this$0.mHasShortcutHostPermission) {
            this.this$0.forceReload();
        }
    }
}
