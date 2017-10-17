// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import com.android.launcher3.util.PackageUserKey;
import android.view.View$OnClickListener;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.Launcher;

public class SystemShortcut$Widgets extends SystemShortcut
{
    public SystemShortcut$Widgets() {
        super(2130837582, 2131492943);
    }
    
    public View$OnClickListener getOnClickListener(final Launcher launcher, final ItemInfo itemInfo) {
        if (launcher.getWidgetsForPackageUser(new PackageUserKey(itemInfo.getTargetComponent().getPackageName(), itemInfo.user)) == null) {
            return null;
        }
        return (View$OnClickListener)new SystemShortcut$Widgets$1(this, launcher, itemInfo);
    }
}
