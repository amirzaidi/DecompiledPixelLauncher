// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import com.google.android.gms.common.api.j;
import com.google.android.gms.location.internal.e;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.api.r;

public class b
{
    public static final c BZ;
    public static final d Ca;
    private static final r Cb;
    private static final l Cc;
    public static final h Cd;
    public static final a Ce;
    
    static {
        Cb = new r();
        Cc = new p();
        Cd = new h("LocationServices.API", b.Cc, b.Cb);
        Ce = new com.google.android.gms.location.internal.p();
        Ca = new e();
        BZ = new com.google.android.gms.location.internal.b();
    }
    
    public static com.google.android.gms.location.internal.a GB(final com.google.android.gms.common.api.d d) {
        final boolean b = true;
        boolean b2 = false;
        com.google.android.gms.common.internal.l.hq(d != null && b, "GoogleApiClient parameter is required.");
        final com.google.android.gms.location.internal.a a = (com.google.android.gms.location.internal.a)d.dA(com.google.android.gms.location.b.Cb);
        if (a != null) {
            b2 = b;
        }
        com.google.android.gms.common.internal.l.hv(b2, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
        return a;
    }
}
