// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.stats;

import android.content.ComponentName;

public final class a
{
    public static int li;
    public static int lj;
    public static int lk;
    public static int ll;
    public static int lm;
    public static int ln;
    public static final ComponentName lo;
    public static int lp;
    public static int lq;
    
    static {
        final boolean b = true;
        lo = new ComponentName("com.google.android.gms", "com.google.android.gms.common.stats.GmsCoreStatsService");
        a.lj = 0;
        a.lp = (b ? 1 : 0);
        a.lq = 2;
        a.lk = 4;
        a.ll = 8;
        a.lm = 16;
        a.ln = 32;
        a.li = (b ? 1 : 0);
    }
}
