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
    final /* synthetic */ f jk;
    
    public z(final f jk) {
        this.jk = jk;
    }
    
    public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        final h ic = this.jk.ic;
        synchronized (ic.io) {
            this.jk.ie = binder;
            this.jk.ih = componentName;
            final Iterator<ServiceConnection> iterator = this.jk.ig.iterator();
            while (iterator.hasNext()) {
                iterator.next().onServiceConnected(componentName, binder);
            }
            this.jk.mState = 1;
        }
    }
    
    public void onServiceDisconnected(final ComponentName componentName) {
        final h ic = this.jk.ic;
        synchronized (ic.io) {
            this.jk.ie = null;
            this.jk.ih = componentName;
            final Iterator<ServiceConnection> iterator = this.jk.ig.iterator();
            while (iterator.hasNext()) {
                iterator.next().onServiceDisconnected(componentName);
            }
            this.jk.mState = 2;
        }
    }
}
