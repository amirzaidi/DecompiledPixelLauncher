// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.a;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;

public final class c
{
    private static Boolean kl;
    private static Boolean km;
    private static Boolean kn;
    
    private static boolean mj(final Resources resources) {
        boolean b = false;
        if (c.kl == null) {
            final Configuration configuration = resources.getConfiguration();
            if (n.mO() && (configuration.screenLayout & 0xF) <= 3 && configuration.smallestScreenWidthDp >= 600) {
                b = true;
            }
            c.kl = b;
        }
        return c.kl;
    }
    
    public static boolean mk(final Resources resources) {
        final boolean b = true;
        boolean b2 = false;
        if (resources != null) {
            if (c.km == null) {
                final boolean b3 = (resources.getConfiguration().screenLayout & 0xF) > 3 && b;
                if ((n.mJ() && b3) || mj(resources)) {
                    b2 = b;
                }
                c.km = b2;
            }
            return c.km;
        }
        return false;
    }
    
    public static boolean ml(final Context context) {
        boolean b = false;
        if (c.kn == null) {
            if (n.mG() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
                b = true;
            }
            c.kn = b;
        }
        return c.kn;
    }
}
