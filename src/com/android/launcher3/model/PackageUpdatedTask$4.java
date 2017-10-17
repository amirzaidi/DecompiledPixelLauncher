// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import java.util.Iterator;
import com.android.launcher3.IconCache;
import android.content.Context;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.InstallShortcutReceiver;
import java.util.Collections;
import android.content.ComponentName;
import com.android.launcher3.ItemInfoWithIcon;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.content.Intent$ShortcutIconResource;
import com.android.launcher3.graphics.LauncherIcons;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.LauncherAppWidgetInfo;
import com.android.launcher3.ShortcutInfo;
import android.util.ArrayMap;
import com.android.launcher3.AppInfo;
import java.util.ArrayList;
import com.android.launcher3.compat.UserManagerCompat;
import com.android.launcher3.SessionCommitReceiver;
import com.android.launcher3.Utilities;
import android.os.Process;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.Collection;
import java.util.Arrays;
import com.android.launcher3.util.FlagOp;
import com.android.launcher3.AllAppsList;
import com.android.launcher3.LauncherAppState;
import android.os.UserHandle;
import com.android.launcher3.LauncherModel$Callbacks;
import java.util.HashSet;
import com.android.launcher3.LauncherModel$CallbackTask;

final class PackageUpdatedTask$4 implements LauncherModel$CallbackTask
{
    final /* synthetic */ PackageUpdatedTask this$0;
    final /* synthetic */ HashSet val$removedComponents;
    final /* synthetic */ HashSet val$removedPackages;
    
    PackageUpdatedTask$4(final PackageUpdatedTask this$0, final HashSet val$removedPackages, final HashSet val$removedComponents) {
        this.this$0 = this$0;
        this.val$removedPackages = val$removedPackages;
        this.val$removedComponents = val$removedComponents;
    }
    
    public void execute(final LauncherModel$Callbacks launcherModel$Callbacks) {
        launcherModel$Callbacks.bindWorkspaceComponentsRemoved(this.val$removedPackages, this.val$removedComponents, this.this$0.mUser);
    }
}
