// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import android.content.Context;
import com.android.launcher3.Utilities;
import com.android.launcher3.Launcher;
import com.android.launcher3.Launcher$LauncherOverlayCallbacks;
import com.google.android.libraries.a.a.d;
import com.android.launcher3.Launcher$LauncherOverlay;

public class a implements Launcher$LauncherOverlay, com.google.android.libraries.a.a.a
{
    private d gs;
    private Launcher$LauncherOverlayCallbacks gt;
    private boolean gu;
    private int gv;
    private boolean gw;
    private final Launcher mLauncher;
    
    public a(final Launcher mLauncher) {
        this.gw = false;
        this.mLauncher = mLauncher;
        this.gv = Utilities.getDevicePrefs((Context)mLauncher).getInt("pref_persistent_flags", 0);
        this.gu = false;
    }
    
    public boolean fa() {
        return this.gw;
    }
    
    public void fb() {
        if (this.gu) {
            this.mLauncher.recreate();
        }
    }
    
    public void fc(final int n) {
        final int gv = n & 0x18;
        if (gv != this.gv) {
            this.gu = true;
            this.gv = gv;
            Utilities.getDevicePrefs((Context)this.mLauncher).edit().putInt("pref_persistent_flags", gv).apply();
        }
    }
    
    public void fd(final boolean gw, final boolean b) {
        if (gw != this.gw) {
            this.gw = gw;
            final Launcher mLauncher = this.mLauncher;
            final Launcher$LauncherOverlay launcherOverlay;
            if (!gw) {
                launcherOverlay = null;
            }
            mLauncher.setLauncherOverlay(launcherOverlay);
        }
    }
    
    public void fe(final d gs) {
        this.gs = gs;
    }
    
    public void onOverlayScrollChanged(final float n) {
        if (this.gt != null) {
            this.gt.onScrollChanged(n);
        }
    }
    
    public void onScrollChange(final float n, final boolean b) {
        this.gs.DI(n);
    }
    
    public void onScrollInteractionBegin() {
        this.gs.Dx();
    }
    
    public void onScrollInteractionEnd() {
        this.gs.Ds();
    }
    
    public void setOverlayCallbacks(final Launcher$LauncherOverlayCallbacks gt) {
        this.gt = gt;
    }
}
