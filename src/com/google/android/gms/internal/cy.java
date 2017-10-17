// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.h;
import java.util.Iterator;
import com.google.android.gms.common.api.j;
import android.support.v4.a.t;
import java.util.Collections;
import java.util.WeakHashMap;
import java.util.ArrayList;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.common.f;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.Set;
import android.os.Looper;
import com.google.android.gms.common.api.i;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

class cy implements cb
{
    final /* synthetic */ bv xa;
    
    private cy(final bv xa) {
        this.xa = xa;
    }
    
    public void Bs(final ConnectionResult connectionResult) {
        this.xa.ur.lock();
        try {
            this.xa.un = connectionResult;
            this.xa.zi();
        }
        finally {
            this.xa.ur.unlock();
        }
    }
    
    public void Bt(final Bundle bundle) {
        this.xa.ur.lock();
        try {
            this.xa.un = ConnectionResult.ks;
            this.xa.zi();
        }
        finally {
            this.xa.ur.unlock();
        }
    }
    
    public void Bu(final int n, final boolean b) {
        this.xa.ur.lock();
        try {
            if (!this.xa.us) {
                this.xa.us = true;
                this.xa.um.BY(n);
                return;
            }
            this.xa.us = false;
            this.xa.yK(n, b);
        }
        finally {
            this.xa.ur.unlock();
        }
    }
}
