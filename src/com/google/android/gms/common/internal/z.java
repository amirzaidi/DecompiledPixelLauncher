// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import java.util.HashSet;
import java.util.Set;
import android.os.Message;
import android.os.Handler;
import android.content.Context;
import java.util.HashMap;
import com.google.android.gms.common.stats.b;
import android.os.Handler$Callback;
import java.util.Iterator;
import android.os.IBinder;
import android.content.ComponentName;
import android.content.ServiceConnection;

public class z implements ServiceConnection
{
    final /* synthetic */ f gs;
    
    public z(final f gs) {
        this.gs = gs;
    }
    
    public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        final h fk = this.gs.fk;
        synchronized (fk.fw) {
            this.gs.fm = binder;
            this.gs.fp = componentName;
            final Iterator<ServiceConnection> iterator = this.gs.fo.iterator();
            while (iterator.hasNext()) {
                iterator.next().onServiceConnected(componentName, binder);
            }
            this.gs.mState = 1;
        }
    }
    
    public void onServiceDisconnected(final ComponentName componentName) {
        final h fk = this.gs.fk;
        synchronized (fk.fw) {
            this.gs.fm = null;
            this.gs.fp = componentName;
            final Iterator<ServiceConnection> iterator = this.gs.fo.iterator();
            while (iterator.hasNext()) {
                iterator.next().onServiceDisconnected(componentName);
            }
            this.gs.mState = 2;
        }
    }
}
