// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import android.view.View$OnClickListener;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.Launcher;

public class SystemShortcut$AppInfo extends SystemShortcut
{
    public SystemShortcut$AppInfo() {
        super(2130837567, 2131492919);
    }
    
    public View$OnClickListener getOnClickListener(final Launcher launcher, final ItemInfo itemInfo) {
        return (View$OnClickListener)new SystemShortcut$AppInfo$1(this, launcher, itemInfo);
    }
}
