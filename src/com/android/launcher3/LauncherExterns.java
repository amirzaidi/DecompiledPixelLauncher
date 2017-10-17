// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.SharedPreferences;

public interface LauncherExterns
{
    void clearTypedText();
    
    SharedPreferences getSharedPrefs();
    
    boolean setLauncherCallbacks(final LauncherCallbacks p0);
    
    void setLauncherOverlay(final Launcher$LauncherOverlay p0);
}
