// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import com.android.launcher3.compat.ShortcutConfigActivityInfo;
import com.android.launcher3.PendingAddItemInfo;

public class PendingAddShortcutInfo extends PendingAddItemInfo
{
    public ShortcutConfigActivityInfo activityInfo;
    
    public PendingAddShortcutInfo(final ShortcutConfigActivityInfo activityInfo) {
        this.activityInfo = activityInfo;
        this.componentName = activityInfo.getComponent();
        this.user = activityInfo.getUser();
        this.itemType = activityInfo.getItemType();
    }
}
