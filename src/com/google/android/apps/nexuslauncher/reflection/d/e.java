// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import android.location.Location;
import android.util.Log;
import com.google.android.apps.nexuslauncher.reflection.b.b;
import com.google.android.gms.location.a;
import com.google.android.gms.common.api.d;

public class e implements c
{
    private final d bU;
    private final a bV;
    
    public e(final d bu, final a bv) {
        this.bU = bu;
        this.bV = bv;
    }
    
    public void aW(final b b) {
        try {
            final a bv = this.bV;
            try {
                final Location fk = bv.FK(this.bU);
                if (fk == null) {
                    return;
                }
                try {
                    final com.google.android.apps.nexuslauncher.reflection.a.e e = new com.google.android.apps.nexuslauncher.reflection.a.e();
                    e.aN = "lat_long";
                    e.aM = fk.getTime();
                    e.aI = new double[2];
                    final double[] ai = e.aI;
                    try {
                        ai[0] = fk.getLatitude();
                        final double[] ai2 = e.aI;
                        try {
                            ai2[1] = fk.getLongitude();
                            final com.google.android.apps.nexuslauncher.reflection.b.a a = new com.google.android.apps.nexuslauncher.reflection.b.a(e);
                            try {
                                com.google.research.reflection.common.b.Un(b, a);
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
