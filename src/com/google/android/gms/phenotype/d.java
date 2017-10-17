// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import android.content.Context;
import com.google.android.gms.internal.i;

public abstract class d
{
    private static i ye;
    private static boolean yh;
    static Context yl;
    private static final Object ym;
    private final String yf;
    private final int yg;
    private final String yi;
    private final String yj;
    private Object yk;
    private final f yn;
    private final String yo;
    private final Object yp;
    
    static {
        ym = new Object();
        d.yl = null;
        d.yh = false;
        d.ye = i.sj("gms:phenotype:phenotype_flag:debug_bypass_phenotype", false);
    }
    
    public d(final String yf, final String yi, final String yo, final int yg, final String yj, final f yn, final Object yp) {
        this.yk = null;
        this.yf = yf;
        this.yi = yi;
        this.yo = yo;
        this.yg = yg;
        this.yj = yj;
        this.yn = yn;
        this.yp = yp;
    }
    
    public static void CN(final Context yl) {
        synchronized (d.ym) {
            if (d.yl == null) {
                d.yl = yl.getApplicationContext();
                if (d.yl == null) {
                    d.yl = yl;
                }
            }
            // monitorexit(d.ym)
            i.sl(yl);
            d.yh = false;
        }
    }
    
    private static d CO(final String s, final String s2, final String s3, final int n, final String s4, final f f, final boolean b) {
        return new o(s, s2, s3, n, s4, f, b, s3);
    }
}
