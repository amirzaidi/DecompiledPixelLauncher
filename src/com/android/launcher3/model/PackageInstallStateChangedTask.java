// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.content.ComponentName;
import java.util.Iterator;
import com.android.launcher3.LauncherModel$CallbackTask;
import com.android.launcher3.LauncherAppWidgetInfo;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.ShortcutInfo;
import java.util.HashSet;
import com.android.launcher3.AllAppsList;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.compat.PackageInstallerCompat$PackageInstallInfo;

public class PackageInstallStateChangedTask extends ExtendedModelTask
{
    private final PackageInstallerCompat$PackageInstallInfo mInstallInfo;
    
    public PackageInstallStateChangedTask(final PackageInstallerCompat$PackageInstallInfo mInstallInfo) {
        this.mInstallInfo = mInstallInfo;
    }
    
    public void execute(final LauncherAppState launcherAppState, final BgDataModel bgDataModel, final AllAppsList list) {
        if (this.mInstallInfo.state == 0) {
            return;
        }
        final HashSet<ShortcutInfo> set;
        synchronized (bgDataModel) {
            set = new HashSet<ShortcutInfo>();
            for (final ItemInfo itemInfo : bgDataModel.itemsIdMap) {
                if (itemInfo instanceof ShortcutInfo) {
                    final ShortcutInfo shortcutInfo = (ShortcutInfo)itemInfo;
                    final ComponentName targetComponent = shortcutInfo.getTargetComponent();
                    if (!shortcutInfo.isPromise() || targetComponent == null || !this.mInstallInfo.packageName.equals(targetComponent.getPackageName())) {
                        continue;
                    }
                    shortcutInfo.setInstallProgress(this.mInstallInfo.progress);
                    if (this.mInstallInfo.state == 2) {
                        shortcutInfo.status &= 0xFFFFFFFB;
                    }
                    set.add(shortcutInfo);
                }
            }
        }
        for (final LauncherAppWidgetInfo launcherAppWidgetInfo : bgDataModel.appWidgets) {
            if (launcherAppWidgetInfo.providerName.getPackageName().equals(this.mInstallInfo.packageName)) {
                launcherAppWidgetInfo.installProgress = this.mInstallInfo.progress;
                set.add((ShortcutInfo)launcherAppWidgetInfo);
            }
        }
        if (!set.isEmpty()) {
            this.scheduleCallbackTask(new PackageInstallStateChangedTask$1(this, set));
        }
    }
    // monitorexit(bgDataModel)
}
