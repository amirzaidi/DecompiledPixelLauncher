// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import android.os.Looper;
import android.content.Context;
import com.google.android.gms.common.api.p;

public class b extends R
{
    private final p eY;
    
    public b(final Context context, final Looper looper, final int n, final g g, final f f, final a a, final p ey) {
        super(context, looper, n, a, g, f);
        this.eY = ey;
    }
    
    protected void gA(final int n, final IInterface interface1) {
        this.eY.er(n, interface1);
    }
    
    protected String gw() {
        return this.eY.eo();
    }
    
    protected String gx() {
        return this.eY.ep();
    }
    
    public p gy() {
        return this.eY;
    }
    
    protected IInterface gz(final IBinder binder) {
        return this.eY.eq(binder);
    }
}
