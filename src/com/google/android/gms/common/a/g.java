// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.a;

import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.util.Log;
import com.google.android.gms.common.j;
import com.google.android.gms.internal.az;
import android.content.Context;

public final class g
{
    public static boolean mr(final Context context, final int n, final String s) {
        return az.uR(context).xC(n, s);
    }
    
    public static boolean ms(final Context context, final int n) {
        if (!mr(context, n, "com.google.android.gms")) {
            return false;
        }
        final PackageManager packageManager = context.getPackageManager();
        final String s = "com.google.android.gms";
        final int n2 = 64;
        final PackageManager packageManager2 = packageManager;
        final String s2 = s;
        try {
            return j.getInstance(context).qN(context.getPackageManager(), packageManager2.getPackageInfo(s2, n2));
        }
        catch (PackageManager$NameNotFoundException ex) {
            if (Log.isLoggable("UidVerifier", 3)) {
                Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
            }
            return false;
        }
    }
}
