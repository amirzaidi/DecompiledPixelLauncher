// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import com.android.launcher3.LauncherExterns;
import com.android.launcher3.Launcher$LauncherOverlayCallbacks;
import com.google.android.libraries.a.a.a;
import com.android.launcher3.Launcher$LauncherOverlay;

public class c implements Launcher$LauncherOverlay, a
{
    private Launcher$LauncherOverlayCallbacks dA;
    private boolean dB;
    private com.google.android.libraries.a.a.c dy;
    private final LauncherExterns dz;
    
    public c(final LauncherExterns dz) {
        this.dB = false;
        this.dz = dz;
    }
    
    public boolean dc() {
        return this.dB;
    }
    
    public void dd(final boolean db, final boolean b) {
        if (db != this.dB) {
            this.dB = db;
            final LauncherExterns dz = this.dz;
            final Launcher$LauncherOverlay launcherOverlay;
            if (!db) {
                launcherOverlay = null;
            }
            dz.setLauncherOverlay(launcherOverlay);
        }
    }
    
    public void de(final com.google.android.libraries.a.a.c dy) {
        this.dy = dy;
    }
    
    public void onOverlayScrollChanged(final float n) {
        if (this.dA != null) {
            this.dA.onScrollChanged(n);
        }
    }
    
    public void onScrollChange(final float n, final boolean b) {
        this.dy.QF(n);
    }
    
    public void onScrollInteractionBegin() {
        this.dy.Qw();
    }
    
    public void onScrollInteractionEnd() {
        this.dy.Qs();
    }
    
    public void setOverlayCallbacks(final Launcher$LauncherOverlayCallbacks da) {
        this.dA = da;
    }
}
