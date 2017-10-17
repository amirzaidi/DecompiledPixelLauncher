// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import android.content.pm.PackageManager;
import android.util.Log;
import android.content.pm.PackageInfo;
import com.google.android.gms.common.internal.l;
import android.content.Context;

public class j
{
    private static j kG;
    private final Context mContext;
    
    private j(final Context context) {
        this.mContext = context.getApplicationContext();
    }
    
    public static j getInstance(final Context context) {
        l.ht(context);
        final Class<j> clazz = j.class;
        synchronized (j.class) {
            if (j.kG == null) {
                e.nS(context);
                j.kG = new j(context);
            }
            return j.kG;
        }
    }
    
    com.google.android.gms.common.l nZ(final PackageInfo packageInfo, final com.google.android.gms.common.l... array) {
        int i = 0;
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length == 1) {
            final d d = new d(packageInfo.signatures[0].toByteArray());
            while (i < array.length) {
                if (array[i].equals(d)) {
                    return array[i];
                }
                ++i;
            }
            return null;
        }
        Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
        return null;
    }
    
    public boolean oa(final PackageInfo packageInfo, final boolean b) {
        int n = 1;
        if (packageInfo != null && packageInfo.signatures != null) {
            com.google.android.gms.common.l l;
            if (!b) {
                final com.google.android.gms.common.l[] array = new com.google.android.gms.common.l[n];
                array[0] = c.kz[0];
                l = this.nZ(packageInfo, array);
            }
            else {
                l = this.nZ(packageInfo, c.kz);
            }
            if (l != null) {
                return n != 0;
            }
        }
        n = 0;
        return n != 0;
    }
    
    public boolean ob(final PackageManager packageManager, final PackageInfo packageInfo) {
        final boolean b = true;
        if (packageInfo == null) {
            return false;
        }
        if (!this.oa(packageInfo, false)) {
            if (this.oa(packageInfo, b)) {
                if (k.ol(this.mContext)) {
                    return b;
                }
                Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
            }
            return false;
        }
        return b;
    }
}
