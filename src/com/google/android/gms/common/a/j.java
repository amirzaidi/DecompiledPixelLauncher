// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.a;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager$NameNotFoundException;
import com.google.android.gms.internal.az;
import android.content.Context;

public class j
{
    public static boolean mv(final Context context, final String s) {
        boolean b = false;
        if (!n.mM()) {
            return false;
        }
        Label_0066: {
            if ("com.google.android.gms".equals(s)) {
                break Label_0066;
            }
            try {
            Label_0025:
                while (true) {
                    final ApplicationInfo xd = az.uR(context).xD(s, 0);
                    try {
                        if ((xd.flags & 0x200000) != 0x0) {
                            b = true;
                        }
                        return b;
                    }
                    // iftrue(Label_0025:, !mw())
                    catch (PackageManager$NameNotFoundException ex) {
                        return false;
                    }
                }
            }
            catch (PackageManager$NameNotFoundException ex2) {}
        }
    }
    
    public static boolean mw() {
        return false;
    }
}
