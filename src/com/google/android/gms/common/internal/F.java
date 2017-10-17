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
    private final z ib;
    final /* synthetic */ h ic;
    private final v id;
    private IBinder ie;
    private boolean if;
    private final Set ig;
    private ComponentName ih;
    private int mState;
    
    public f(final h ic, final v id) {
        this.ic = ic;
        this.id = id;
        this.ib = new z(this);
        this.ig = new HashSet();
        this.mState = 2;
    }
    
    public int getState() {
        return this.mState;
    }
    
    public boolean isBound() {
        return this.if;
    }
    
    public IBinder jA() {
        return this.ie;
    }
    
    public void jB(final ServiceConnection serviceConnection, final String s) {
        this.ic.in.oJ(this.ic.ip, serviceConnection, s, this.id.ky());
        this.ig.add(serviceConnection);
    }
    
    public boolean jC() {
        return this.ig.isEmpty();
    }
    
    public void jD(final ServiceConnection serviceConnection, final String s) {
        this.ic.in.oO(this.ic.ip, serviceConnection);
        this.ig.remove(serviceConnection);
    }
    
    public void jE(final String s) {
        this.mState = 3;
        this.if = this.ic.in.oG(this.ic.ip, s, this.id.ky(), (ServiceConnection)this.ib, 129);
        if (!this.if) {
            this.mState = 2;
            try {
                final h ic = this.ic;
                try {
                    final b jm = ic.in;
                    try {
                        final h ic2 = this.ic;
                        try {
                            final Context jp = ic2.ip;
                            try {
                                jm.oH(jp, (ServiceConnection)this.ib);
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
    
    public void jG(final String s) {
        this.ic.in.oH(this.ic.ip, (ServiceConnection)this.ib);
        this.if = false;
        this.mState = 2;
    }
    
    public ComponentName jI() {
        return this.ih;
    }
    
    public boolean jJ(final ServiceConnection serviceConnection) {
        return this.ig.contains(serviceConnection);
    }
}
