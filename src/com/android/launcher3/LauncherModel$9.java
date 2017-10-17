// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import com.android.launcher3.model.PackageInstallStateChangedTask;
import com.android.launcher3.compat.PackageInstallerCompat$PackageInstallInfo;
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
import com.android.launcher3.compat.LauncherAppsCompat$OnAppsChangedCallbackCompat;
import android.content.BroadcastReceiver;
import java.util.ArrayList;
import com.android.launcher3.util.PackageUserKey;

final class LauncherModel$9 implements Runnable
{
    final /* synthetic */ LauncherModel this$0;
    final /* synthetic */ boolean val$bindFirst;
    final /* synthetic */ LauncherModel$Callbacks val$callbacks;
    final /* synthetic */ PackageUserKey val$packageUser;
    
    LauncherModel$9(final LauncherModel this$0, final boolean val$bindFirst, final LauncherModel$Callbacks val$callbacks, final PackageUserKey val$packageUser) {
        this.this$0 = this$0;
        this.val$bindFirst = val$bindFirst;
        this.val$callbacks = val$callbacks;
        this.val$packageUser = val$packageUser;
    }
    
    public void run() {
        if (this.val$bindFirst && (this.this$0.mBgWidgetsModel.isEmpty() ^ true)) {
            this.this$0.bindWidgetsModel(this.val$callbacks);
        }
        final ArrayList update = this.this$0.mBgWidgetsModel.update(this.this$0.mApp.getContext(), this.val$packageUser);
        this.this$0.bindWidgetsModel(this.val$callbacks);
        this.this$0.mApp.getWidgetCache().removeObsoletePreviews(update, this.val$packageUser);
    }
}
