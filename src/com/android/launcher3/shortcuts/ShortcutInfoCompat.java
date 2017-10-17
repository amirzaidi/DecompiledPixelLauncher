// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.shortcuts;

import android.content.Intent;
import android.os.UserHandle;
import android.content.ComponentName;
import android.content.pm.ShortcutInfo;

public class ShortcutInfoCompat
{
    private ShortcutInfo mShortcutInfo;
    
    public ShortcutInfoCompat(final ShortcutInfo mShortcutInfo) {
        this.mShortcutInfo = mShortcutInfo;
    }
    
    public ComponentName getActivity() {
        return this.mShortcutInfo.getActivity();
    }
    
    public CharSequence getDisabledMessage() {
        return this.mShortcutInfo.getDisabledMessage();
    }
    
    public String getId() {
        return this.mShortcutInfo.getId();
    }
    
    public CharSequence getLongLabel() {
        return this.mShortcutInfo.getLongLabel();
    }
    
    public String getPackage() {
        return this.mShortcutInfo.getPackage();
    }
    
    public int getRank() {
        return this.mShortcutInfo.getRank();
    }
    
    public CharSequence getShortLabel() {
        return this.mShortcutInfo.getShortLabel();
    }
    
    public ShortcutInfo getShortcutInfo() {
        return this.mShortcutInfo;
    }
    
    public UserHandle getUserHandle() {
        return this.mShortcutInfo.getUserHandle();
    }
    
    public boolean isDeclaredInManifest() {
        return this.mShortcutInfo.isDeclaredInManifest();
    }
    
    public boolean isDynamic() {
        return this.mShortcutInfo.isDynamic();
    }
    
    public boolean isEnabled() {
        return this.mShortcutInfo.isEnabled();
    }
    
    public boolean isPinned() {
        return this.mShortcutInfo.isPinned();
    }
    
    public Intent makeIntent() {
        return new Intent("android.intent.action.MAIN").addCategory("com.android.launcher3.DEEP_SHORTCUT").setComponent(this.getActivity()).setPackage(this.getPackage()).setFlags(270532608).putExtra("shortcut_id", this.getId());
    }
    
    public String toString() {
        return this.mShortcutInfo.toString();
    }
}
