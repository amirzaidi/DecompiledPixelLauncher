// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.a.a;

import com.google.android.libraries.launcherclient.ILauncherOverlay$Stub;
import android.os.IBinder;
import android.content.ComponentName;
import android.content.Context;
import java.lang.ref.WeakReference;
import com.google.android.libraries.launcherclient.ILauncherOverlay;

class g extends h
{
    private static g NN;
    private boolean NK;
    private ILauncherOverlay NL;
    private WeakReference NM;
    
    private g(final Context context) {
        super(context, 33);
    }
    
    private void DX() {
        if (this.NK && this.NL == null) {
            this.Eb();
        }
    }
    
    private void DY(final ILauncherOverlay nl) {
        this.NL = nl;
        final d dz = this.DZ();
        if (dz != null) {
            dz.Du(this.NL);
        }
    }
    
    private d DZ() {
        d d = null;
        if (this.NM != null) {
            d = (d)this.NM.get();
        }
        return d;
    }
    
    static g get(final Context context) {
        if (g.NN == null) {
            g.NN = new g(context.getApplicationContext());
        }
        return g.NN;
    }
    
    public void DU(final d d, final boolean b) {
        final d dz = this.DZ();
        if (dz != null && dz.equals(d)) {
            this.NM = null;
            if (b) {
                this.Eb();
                if (g.NN == this) {
                    g.NN = null;
                }
            }
        }
    }
    
    public void DV(final boolean nk) {
        this.NK = nk;
        this.DX();
    }
    
    public ILauncherOverlay DW(final d d) {
        this.NM = new WeakReference((T)d);
        return this.NL;
    }
    
    public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        this.DY(ILauncherOverlay$Stub.asInterface(binder));
    }
    
    public void onServiceDisconnected(final ComponentName componentName) {
        this.DY(null);
        this.DX();
    }
}
