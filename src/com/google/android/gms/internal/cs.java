// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.internal.l;
import java.util.Iterator;
import com.google.android.gms.common.api.h;
import android.support.v4.a.t;
import java.util.Collections;
import java.util.WeakHashMap;
import java.util.ArrayList;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.common.f;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.Set;
import android.os.Looper;
import com.google.android.gms.common.api.g;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

class cs implements bV
{
    final /* synthetic */ bp xg;
    
    private cs(final bp xg) {
        this.xg = xg;
    }
    
    public void Br(final ConnectionResult connectionResult) {
        this.xg.ux.lock();
        try {
            this.xg.ut = connectionResult;
            this.xg.zh();
        }
        finally {
            this.xg.ux.unlock();
        }
    }
    
    public void Bs(final Bundle bundle) {
        this.xg.ux.lock();
        try {
            this.xg.ut = ConnectionResult.nk;
            this.xg.zh();
        }
        finally {
            this.xg.ux.unlock();
        }
    }
    
    public void Bt(final int n, final boolean b) {
        this.xg.ux.lock();
        try {
            if (!this.xg.uy) {
                this.xg.uy = true;
                this.xg.us.BX(n);
                return;
            }
            this.xg.uy = false;
            this.xg.yJ(n, b);
        }
        finally {
            this.xg.ux.unlock();
        }
    }
}
