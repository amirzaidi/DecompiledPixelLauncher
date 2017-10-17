// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.clearcut;

import android.content.Context;

public class f
{
    private static int Ik;
    public static final f Il;
    
    static {
        f.Ik = -1;
        Il = new f();
    }
    
    public int MC(final Context context) {
        if (f.Ik < 0) {
            f.Ik = context.getSharedPreferences("bootCount", 0).getInt("bootCount", 1);
        }
        return f.Ik;
    }
}
