// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import android.content.Context;
import com.android.launcher3.Utilities;
import com.android.launcher3.Launcher;
import com.android.launcher3.Launcher$LauncherOverlayCallbacks;
import com.google.android.libraries.a.a.a;
import com.android.launcher3.Launcher$LauncherOverlay;

public class d implements Launcher$LauncherOverlay, a
{
    private com.google.android.libraries.a.a.d fM;
    private Launcher$LauncherOverlayCallbacks fN;
    private boolean fO;
    private int fP;
    private boolean fQ;
    private final Launcher mLauncher;
    
    public d(final Launcher mLauncher) {
        this.fQ = false;
        this.mLauncher = mLauncher;
        this.fP = Utilities.getDevicePrefs((Context)mLauncher).getInt("pref_persistent_flags", 0);
        this.fO = false;
    }
    
    public boolean ep() {
        return this.fQ;
    }
    
    public void eq(final com.google.android.libraries.a.a.d fm) {
        this.fM = fm;
    }
    
    public void er() {
        if (this.fO) {
            this.mLauncher.recreate();
        }
    }
    
    public void es(final int n) {
        final int fp = n & 0x18;
        if (fp != this.fP) {
            this.fO = true;
            this.fP = fp;
            Utilities.getDevicePrefs((Context)this.mLauncher).edit().putInt("pref_persistent_flags", fp).apply();
        }
    }
    
    public void et(final boolean fq, final boolean b) {
        if (fq != this.fQ) {
            this.fQ = fq;
            final Launcher mLauncher = this.mLauncher;
            final Launcher$LauncherOverlay launcherOverlay;
            if (!fq) {
                launcherOverlay = null;
            }
            mLauncher.setLauncherOverlay(launcherOverlay);
        }
    }
    
    public void onOverlayScrollChanged(final float n) {
        if (this.fN != null) {
            this.fN.onScrollChanged(n);
        }
    }
    
    public void onScrollChange(final float n, final boolean b) {
        this.fM.Rz(n);
    }
    
    public void onScrollInteractionBegin() {
        this.fM.Rp();
    }
    
    public void onScrollInteractionEnd() {
        this.fM.Rl();
    }
    
    public void setOverlayCallbacks(final Launcher$LauncherOverlayCallbacks fn) {
        this.fN = fn;
    }
}
