// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import java.util.Iterator;
import android.content.ComponentName;
import com.android.launcher3.LauncherAppWidgetInfo;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.ItemInfo;
import java.util.HashSet;
import com.android.launcher3.LauncherModel$CallbackTask;
import com.android.launcher3.AppInfo;
import com.android.launcher3.PromiseAppInfo;
import java.util.ArrayList;
import com.android.launcher3.AllAppsList;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.compat.PackageInstallerCompat$PackageInstallInfo;

public class PackageInstallStateChangedTask extends BaseModelUpdateTask
{
    private final PackageInstallerCompat$PackageInstallInfo mInstallInfo;
    
    public PackageInstallStateChangedTask(final PackageInstallerCompat$PackageInstallInfo mInstallInfo) {
        this.mInstallInfo = mInstallInfo;
    }
    
    public void execute(final LauncherAppState launcherAppState, final BgDataModel bgDataModel, final AllAppsList list) {
        final int n = 2;
        Object iterator = null;
        Object o = this.mInstallInfo;
        if (((PackageInstallerCompat$PackageInstallInfo)o).state == 0) {
            return;
        }
    Label_0186_Outer:
        while (true) {
            while (true) {
                Label_0678: {
                    synchronized (list) {
                        Object o2 = new ArrayList<PromiseAppInfo>();
                        Object o3;
                        for (int i = 0; i < list.size(); ++i, iterator = o3) {
                            o = list.get(i);
                            final ComponentName targetComponent = ((ItemInfo)o).getTargetComponent();
                            if (targetComponent != null) {
                                if (!targetComponent.getPackageName().equals(this.mInstallInfo.packageName) || !(o instanceof PromiseAppInfo)) {
                                    break Label_0678;
                                }
                                final PromiseAppInfo promiseAppInfo = (PromiseAppInfo)(o3 = o);
                                if (this.mInstallInfo.state == 1) {
                                    o = this.mInstallInfo;
                                    promiseAppInfo.level = ((PackageInstallerCompat$PackageInstallInfo)o).progress;
                                }
                                else {
                                    if (this.mInstallInfo.state != n) {
                                        break Label_0678;
                                    }
                                    list.removePromiseApp((AppInfo)o);
                                    ((ArrayList<PromiseAppInfo>)o2).add((PromiseAppInfo)o);
                                    o3 = iterator;
                                }
                            }
                            else {
                                o3 = iterator;
                            }
                        }
                        if (iterator != null) {
                            this.scheduleCallbackTask(new PackageInstallStateChangedTask$1(this, (PromiseAppInfo)iterator));
                        }
                        if (!((ArrayList)o2).isEmpty()) {
                            this.scheduleCallbackTask(new PackageInstallStateChangedTask$2(this, (ArrayList)o2));
                        }
                        // monitorexit(list)
                        synchronized (bgDataModel) {
                            o = new HashSet();
                            iterator = bgDataModel.itemsIdMap.iterator();
                            while (((Iterator)iterator).hasNext()) {
                                final ItemInfo itemInfo = ((Iterator<ItemInfo>)iterator).next();
                                int i = (itemInfo instanceof ShortcutInfo) ? 1 : 0;
                                if (i != 0) {
                                    final ShortcutInfo shortcutInfo = (ShortcutInfo)itemInfo;
                                    final ComponentName targetComponent2 = shortcutInfo.getTargetComponent();
                                    if (!shortcutInfo.isPromise() || targetComponent2 == null) {
                                        continue Label_0186_Outer;
                                    }
                                    o2 = this.mInstallInfo;
                                    o2 = ((PackageInstallerCompat$PackageInstallInfo)o2).packageName;
                                    i = (((String)o2).equals(targetComponent2.getPackageName()) ? 1 : 0);
                                    if (i == 0) {
                                        continue Label_0186_Outer;
                                    }
                                    i = this.mInstallInfo.progress;
                                    shortcutInfo.setInstallProgress(i);
                                    i = this.mInstallInfo.state;
                                    if (i == n) {
                                        i = (shortcutInfo.status & 0xFFFFFFFB);
                                        shortcutInfo.status = i;
                                    }
                                    ((HashSet<ShortcutInfo>)o).add(shortcutInfo);
                                }
                            }
                        }
                    }
                    break;
                }
                Object o3 = iterator;
                continue;
            }
        }
        for (final LauncherAppWidgetInfo launcherAppWidgetInfo : bgDataModel.appWidgets) {
            if (launcherAppWidgetInfo.providerName.getPackageName().equals(this.mInstallInfo.packageName)) {
                launcherAppWidgetInfo.installProgress = this.mInstallInfo.progress;
                ((HashSet<ShortcutInfo>)o).add((ShortcutInfo)launcherAppWidgetInfo);
            }
        }
        if (!((HashSet)o).isEmpty()) {
            this.scheduleCallbackTask(new PackageInstallStateChangedTask$3(this, (HashSet)o));
        }
    }
    // monitorexit(bgDataModel)
}
