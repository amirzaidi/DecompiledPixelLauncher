// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.Locale;
import android.graphics.drawable.Drawable;
import android.content.pm.LauncherActivityInfo;

public class IconProvider
{
    protected String mSystemState;
    
    public IconProvider() {
        this.updateSystemStateString();
    }
    
    public Drawable getIcon(final LauncherActivityInfo launcherActivityInfo, final int n, final boolean b) {
        return launcherActivityInfo.getIcon(n);
    }
    
    public String getIconSystemState(final String s) {
        return this.mSystemState;
    }
    
    public void updateSystemStateString() {
        this.mSystemState = Locale.getDefault().toString();
    }
}
