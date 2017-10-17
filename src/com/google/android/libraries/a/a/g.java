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
    private static g Mj;
    private boolean Mg;
    private ILauncherOverlay Mh;
    private WeakReference Mi;
    
    private g(final Context context) {
        super(context, 33);
    }
    
    private void RO() {
        if (this.Mg && this.Mh == null) {
            this.RS();
        }
    }
    
    private void RP(final ILauncherOverlay mh) {
        this.Mh = mh;
        final d rq = this.RQ();
        if (rq != null) {
            rq.Rn(this.Mh);
        }
    }
    
    private d RQ() {
        d d = null;
        if (this.Mi != null) {
            d = (d)this.Mi.get();
        }
        return d;
    }
    
    static g get(final Context context) {
        if (g.Mj == null) {
            g.Mj = new g(context.getApplicationContext());
        }
        return g.Mj;
    }
    
    public void RL(final d d, final boolean b) {
        final d rq = this.RQ();
        if (rq != null && rq.equals(d)) {
            this.Mi = null;
            if (b) {
                this.RS();
                if (g.Mj == this) {
                    g.Mj = null;
                }
            }
        }
    }
    
    public void RM(final boolean mg) {
        this.Mg = mg;
        this.RO();
    }
    
    public ILauncherOverlay RN(final d d) {
        this.Mi = new WeakReference((T)d);
        return this.Mh;
    }
    
    public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        this.RP(ILauncherOverlay$Stub.asInterface(binder));
    }
    
    public void onServiceDisconnected(final ComponentName componentName) {
        this.RP(null);
        this.RO();
    }
}
