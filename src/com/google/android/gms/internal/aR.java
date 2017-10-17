// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.ContentResolver;

class ar
{
    final ContentResolver rS;
    
    ar(final Context context) {
        if (context != null && uh(context)) {
            aY.xo(this.rS = context.getContentResolver(), "gms:playlog:service:sampling_");
        }
        else {
            this.rS = null;
        }
    }
    
    private static boolean uh(final Context context) {
        boolean b = false;
        if (av.rX == null) {
            if (context.checkCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0) {
                b = true;
            }
            av.rX = b;
        }
        return av.rX;
    }
    
    long uf() {
        long xi = 0L;
        if (this.rS != null) {
            xi = aY.xi(this.rS, "android_id", xi);
        }
        return xi;
    }
    
    String ug(final String s) {
        String xg;
        if (this.rS != null) {
            final ContentResolver rs = this.rS;
            final String value = String.valueOf("gms:playlog:service:sampling_");
            final String value2 = String.valueOf(s);
            String concat;
            if (value2.length() == 0) {
                concat = new String(value);
            }
            else {
                concat = value.concat(value2);
            }
            xg = aY.xg(rs, concat, null);
        }
        else {
            xg = null;
        }
        return xg;
    }
}
