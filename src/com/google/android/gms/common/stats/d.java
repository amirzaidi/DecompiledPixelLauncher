// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.stats;

import com.google.android.gms.internal.i;

public final class d
{
    public static i mb;
    public static i mc;
    public static i md;
    public static i me;
    public static i mf;
    public static i mg;
    
    static {
        d.mf = i.sp("gms:common:stats:connections:level", a.lj);
        d.mc = i.sk("gms:common:stats:connections:ignored_calling_processes", "");
        d.mb = i.sk("gms:common:stats:connections:ignored_calling_services", "");
        d.mg = i.sk("gms:common:stats:connections:ignored_target_processes", "");
        d.md = i.sk("gms:common:stats:connections:ignored_target_services", "com.google.android.gms.auth.GetToken");
        d.me = i.so("gms:common:stats:connections:time_out_duration", 600000L);
    }
}
