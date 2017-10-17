// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.graphics.drawable.Drawable;
import com.android.launcher3.IconCache;
import android.os.Process;
import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.content.pm.ActivityInfo;

class ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL extends ShortcutConfigActivityInfo
{
    private final ActivityInfo mInfo;
    private final PackageManager mPm;
    
    public ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL(final ActivityInfo mInfo, final PackageManager mPm) {
        super(new ComponentName(mInfo.packageName, mInfo.name), Process.myUserHandle());
        this.mInfo = mInfo;
        this.mPm = mPm;
    }
    
    public Drawable getFullResIcon(final IconCache iconCache) {
        return iconCache.getFullResIcon(this.mInfo);
    }
    
    public CharSequence getLabel() {
        return this.mInfo.loadLabel(this.mPm);
    }
}
