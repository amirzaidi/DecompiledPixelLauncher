// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.ContentResolver;

class al
{
    final ContentResolver rY;
    
    al(final Context context) {
        if (context != null && ug(context)) {
            aS.xn(this.rY = context.getContentResolver(), "gms:playlog:service:sampling_");
        }
        else {
            this.rY = null;
        }
    }
    
    private static boolean ug(final Context context) {
        boolean b = false;
        if (aq.sf == null) {
            if (context.checkCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0) {
                b = true;
            }
            aq.sf = b;
        }
        return aq.sf;
    }
    
    long ue() {
        long xh = 0L;
        if (this.rY != null) {
            xh = aS.xh(this.rY, "android_id", xh);
        }
        return xh;
    }
    
    String uf(final String s) {
        String xf;
        if (this.rY != null) {
            final ContentResolver ry = this.rY;
            final String value = String.valueOf("gms:playlog:service:sampling_");
            final String value2 = String.valueOf(s);
            String concat;
            if (value2.length() == 0) {
                concat = new String(value);
            }
            else {
                concat = value.concat(value2);
            }
            xf = aS.xf(ry, concat, null);
        }
        else {
            xf = null;
        }
        return xf;
    }
}
