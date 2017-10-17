// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.a;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;

public final class c
{
    private static Boolean ht;
    private static Boolean hu;
    private static Boolean hv;
    
    private static boolean jv(final Resources resources) {
        boolean b = false;
        if (c.ht == null) {
            final Configuration configuration = resources.getConfiguration();
            if (n.ka() && (configuration.screenLayout & 0xF) <= 3 && configuration.smallestScreenWidthDp >= 600) {
                b = true;
            }
            c.ht = b;
        }
        return c.ht;
    }
    
    public static boolean jw(final Resources resources) {
        final boolean b = true;
        boolean b2 = false;
        if (resources != null) {
            if (c.hu == null) {
                final boolean b3 = (resources.getConfiguration().screenLayout & 0xF) > 3 && b;
                if ((n.jV() && b3) || jv(resources)) {
                    b2 = b;
                }
                c.hu = b2;
            }
            return c.hu;
        }
        return false;
    }
    
    public static boolean jx(final Context context) {
        boolean b = false;
        if (c.hv == null) {
            if (n.jS() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
                b = true;
            }
            c.hv = b;
        }
        return c.hv;
    }
}
