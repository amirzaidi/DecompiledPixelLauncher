// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

public interface Launcher$LauncherOverlay
{
    void onScrollChange(final float p0, final boolean p1);
    
    void onScrollInteractionBegin();
    
    void onScrollInteractionEnd();
    
    void setOverlayCallbacks(final Launcher$LauncherOverlayCallbacks p0);
}
