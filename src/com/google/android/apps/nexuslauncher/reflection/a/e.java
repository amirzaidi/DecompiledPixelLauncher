// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import android.location.Location;
import android.util.Log;
import com.google.android.apps.nexuslauncher.reflection.d.i;
import com.google.android.apps.nexuslauncher.reflection.b.b;
import com.google.android.gms.common.api.a;

public class e implements c
{
    private final a m;
    private final com.google.android.gms.location.a n;
    
    public e(final a m, final com.google.android.gms.location.a n) {
        this.m = m;
        this.n = n;
    }
    
    public void l(final b b) {
        try {
            final com.google.android.gms.location.a n = this.n;
            try {
                final Location gd = n.GD(this.m);
                if (gd == null) {
                    return;
                }
                try {
                    final i i = new i();
                    i.aC = "lat_long";
                    i.aD = gd.getTime();
                    i.aG = new double[2];
                    final double[] ag = i.aG;
                    try {
                        ag[0] = gd.getLatitude();
                        final double[] ag2 = i.aG;
                        try {
                            ag2[1] = gd.getLongitude();
                            final com.google.android.apps.nexuslauncher.reflection.b.a a = new com.google.android.apps.nexuslauncher.reflection.b.a(i);
                            try {
                                com.google.research.reflection.common.b.Ta(b, a);
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
