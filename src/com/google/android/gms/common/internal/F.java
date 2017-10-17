// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.Message;
import android.os.Handler;
import java.util.HashMap;
import android.os.Handler$Callback;
import android.content.Context;
import com.google.android.gms.common.stats.b;
import android.content.ServiceConnection;
import java.util.HashSet;
import android.content.ComponentName;
import java.util.Set;
import android.os.IBinder;

final class f
{
    private final z fj;
    final /* synthetic */ h fk;
    private final v fl;
    private IBinder fm;
    private boolean fn;
    private final Set fo;
    private ComponentName fp;
    private int mState;
    
    public f(final h fk, final v fl) {
        this.fk = fk;
        this.fl = fl;
        this.fj = new z(this);
        this.fo = new HashSet();
        this.mState = 2;
    }
    
    public IBinder gM() {
        return this.fm;
    }
    
    public void gN(final ServiceConnection serviceConnection, final String s) {
        this.fk.fv.lV(this.fk.fx, serviceConnection, s, this.fl.hK());
        this.fo.add(serviceConnection);
    }
    
    public boolean gO() {
        return this.fo.isEmpty();
    }
    
    public void gP(final ServiceConnection serviceConnection, final String s) {
        this.fk.fv.ma(this.fk.fx, serviceConnection);
        this.fo.remove(serviceConnection);
    }
    
    public void gQ(final String s) {
        this.mState = 3;
        this.fn = this.fk.fv.lS(this.fk.fx, s, this.fl.hK(), (ServiceConnection)this.fj, 129);
        if (!this.fn) {
            this.mState = 2;
            try {
                final h fk = this.fk;
                try {
                    final b gy = fk.fv;
                    try {
                        final h fk2 = this.fk;
                        try {
                            final Context hb = fk2.fx;
                            try {
                                gy.lT(hb, (ServiceConnection)this.fj);
                            }
                            catch (IllegalArgumentException ex) {}
                        }
                        catch (IllegalArgumentException ex2) {}
                    }
                    catch (IllegalArgumentException ex3) {}
                }
                catch (IllegalArgumentException ex4) {}
            }
            catch (IllegalArgumentException ex5) {}
        }
    }
    
    public void gS(final String s) {
        this.fk.fv.lT(this.fk.fx, (ServiceConnection)this.fj);
        this.fn = false;
        this.mState = 2;
    }
    
    public ComponentName gU() {
        return this.fp;
    }
    
    public boolean gV(final ServiceConnection serviceConnection) {
        return this.fo.contains(serviceConnection);
    }
    
    public int getState() {
        return this.mState;
    }
    
    public boolean isBound() {
        return this.fn;
    }
}
