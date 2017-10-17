// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.stats;

import com.google.android.gms.internal.i;

public final class e
{
    public static i jj;
    public static i jk;
    public static i jl;
    public static i jm;
    public static i jn;
    public static i jo;
    
    static {
        e.jn = i.sn("gms:common:stats:connections:level", a.ir);
        e.jk = i.si("gms:common:stats:connections:ignored_calling_processes", "");
        e.jj = i.si("gms:common:stats:connections:ignored_calling_services", "");
        e.jo = i.si("gms:common:stats:connections:ignored_target_processes", "");
        e.jl = i.si("gms:common:stats:connections:ignored_target_services", "com.google.android.gms.auth.GetToken");
        e.jm = i.sm("gms:common:stats:connections:time_out_duration", 600000L);
    }
}
