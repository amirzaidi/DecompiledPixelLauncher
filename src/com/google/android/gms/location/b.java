// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import com.google.android.gms.common.api.h;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.q;

public class b
{
    public static final c DE;
    public static final d DF;
    private static final q DG;
    private static final j DH;
    public static final e DI;
    public static final a DJ;
    
    static {
        DG = new q();
        DH = new p();
        DI = new e("LocationServices.API", b.DH, b.DG);
        DJ = new com.google.android.gms.location.internal.p();
        DF = new com.google.android.gms.location.internal.e();
        DE = new com.google.android.gms.location.internal.b();
    }
    
    public static com.google.android.gms.location.internal.a Hu(final com.google.android.gms.common.api.a a) {
        final boolean b = true;
        boolean b2 = false;
        l.ke(a != null && b, "GoogleApiClient parameter is required.");
        final com.google.android.gms.location.internal.a a2 = (com.google.android.gms.location.internal.a)a.gl(com.google.android.gms.location.b.DG);
        if (a2 != null) {
            b2 = b;
        }
        l.kj(b2, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
        return a2;
    }
}
