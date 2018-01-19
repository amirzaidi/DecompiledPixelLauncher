// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.e;

import android.location.Location;
import android.util.Log;
import com.google.android.apps.nexuslauncher.reflection.f.i;
import com.google.android.apps.nexuslauncher.reflection.d.b;

public class a implements c
{
    private final com.google.android.gms.common.api.a M;
    private final com.google.android.gms.location.a N;
    
    public a(final com.google.android.gms.common.api.a m, final com.google.android.gms.location.a n) {
        this.M = m;
        this.N = n;
    }
    
    public void ao(final b b) {
        try {
            final com.google.android.gms.location.a n = this.N;
            try {
                final Location zk = n.zk(this.M);
                if (zk == null) {
                    return;
                }
                try {
                    final i i = new i();
                    i.aM = "lat_long";
                    i.aN = zk.getTime();
                    i.aO = new double[2];
                    final double[] ao = i.aO;
                    try {
                        ao[0] = zk.getLatitude();
                        final double[] ao2 = i.aO;
                        try {
                            ao2[1] = zk.getLongitude();
                            final com.google.android.apps.nexuslauncher.reflection.d.a a = new com.google.android.apps.nexuslauncher.reflection.d.a(i);
                            try {
                                com.google.research.reflection.common.b.HE(b, a);
                            }
                            catch (SecurityException ex) {
                                Log.d("Reflection.LocReader", "cannot read location due to lack of permission", (Throwable)ex);
                            }
                        }
                        catch (SecurityException ex2) {}
                    }
                    catch (SecurityException ex3) {}
                }
                catch (SecurityException ex4) {}
            }
            catch (SecurityException ex5) {}
        }
        catch (SecurityException ex6) {}
    }
}
