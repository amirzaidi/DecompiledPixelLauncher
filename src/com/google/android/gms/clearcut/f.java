// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.clearcut;

import android.content.Context;

public class f
{
    private static int GF;
    public static final f GG;
    
    static {
        f.GF = -1;
        GG = new f();
    }
    
    public int LJ(final Context context) {
        if (f.GF < 0) {
            f.GF = context.getSharedPreferences("bootCount", 0).getInt("bootCount", 1);
        }
        return f.GF;
    }
}
