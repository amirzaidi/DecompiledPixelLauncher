// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import android.view.View$OnClickListener;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.Launcher;
import com.android.launcher3.popup.SystemShortcut;

class c extends SystemShortcut
{
    c() {
        super(2130837554, 2131493028);
    }
    
    public View$OnClickListener getOnClickListener(final Launcher launcher, final ItemInfo itemInfo) {
        return (View$OnClickListener)new i(this);
    }
}
