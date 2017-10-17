// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.content.ComponentName;
import java.util.Iterator;
import com.android.launcher3.IconCache;
import com.android.launcher3.LauncherModel$CallbackTask;
import com.android.launcher3.ItemInfoWithIcon;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.ShortcutInfo;
import java.util.ArrayList;
import com.android.launcher3.AllAppsList;
import com.android.launcher3.LauncherAppState;
import android.os.UserHandle;
import java.util.HashSet;

public class CacheDataUpdatedTask extends BaseModelUpdateTask
{
    private final int mOp;
    private final HashSet mPackages;
    private final UserHandle mUser;
    
    public CacheDataUpdatedTask(final int mOp, final UserHandle mUser, final HashSet mPackages) {
        this.mOp = mOp;
        this.mUser = mUser;
        this.mPackages = mPackages;
    }
    
    public void execute(final LauncherAppState launcherAppState, final BgDataModel bgDataModel, final AllAppsList list) {
        final IconCache iconCache = launcherAppState.getIconCache();
        final ArrayList list2 = new ArrayList();
        final ArrayList<ShortcutInfo> list3 = new ArrayList<ShortcutInfo>();
        synchronized (bgDataModel) {
            for (final ItemInfo itemInfo : bgDataModel.itemsIdMap) {
                if (itemInfo instanceof ShortcutInfo && this.mUser.equals((Object)((ShortcutInfo)itemInfo).user)) {
                    final ShortcutInfo shortcutInfo = (ShortcutInfo)itemInfo;
                    final ComponentName targetComponent = shortcutInfo.getTargetComponent();
                    if (shortcutInfo.itemType != 0 || !this.isValidShortcut(shortcutInfo) || targetComponent == null || !this.mPackages.contains(targetComponent.getPackageName())) {
                        continue;
                    }
                    iconCache.getTitleAndIcon(shortcutInfo, shortcutInfo.usingLowResIcon);
                    list3.add(shortcutInfo);
                }
            }
        }
        list.updateIconsAndLabels(this.mPackages, this.mUser, list2);
        // monitorexit(bgDataModel)
        this.bindUpdatedShortcuts(list3, this.mUser);
        if (!list2.isEmpty()) {
            this.scheduleCallbackTask(new CacheDataUpdatedTask$1(this, list2));
        }
    }
    
    public boolean isValidShortcut(final ShortcutInfo shortcutInfo) {
        switch (this.mOp) {
            default: {
                return false;
            }
            case 1: {
                return true;
            }
            case 2: {
                return shortcutInfo.isPromise();
            }
        }
    }
}
