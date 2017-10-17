// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.IInterface;
import android.os.IBinder;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;
import android.os.Looper;
import android.content.Context;
import com.google.android.gms.common.api.o;

public class b extends R
{
    private final o hR;
    
    public b(final Context context, final Looper looper, final int n, final d d, final c c, final a a, final o hr) {
        super(context, looper, n, a, d, c);
        this.hR = hr;
    }
    
    protected String jk() {
        return this.hR.hb();
    }
    
    protected String jl() {
        return this.hR.hc();
    }
    
    public o jm() {
        return this.hR;
    }
    
    protected IInterface jn(final IBinder binder) {
        return this.hR.hd(binder);
    }
    
    protected void jo(final int n, final IInterface interface1) {
        this.hR.he(n, interface1);
    }
}
