// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import com.google.android.gms.common.a.c;
import com.google.android.gms.common.internal.t;
import android.content.Intent;
import android.app.PendingIntent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.text.TextUtils;
import android.content.Context;

public class f
{
    public static final int kC;
    private static final f kD;
    
    static {
        kC = k.kI;
        kD = new f();
    }
    
    private String nV(final Context context, final String s) {
        final StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(f.kC);
        sb.append("-");
        if (!TextUtils.isEmpty((CharSequence)s)) {
            sb.append(s);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                final PackageManager packageManager = context.getPackageManager();
                try {
                    final PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
                    try {
                        sb.append(packageInfo.versionCode);
                        return sb.toString();
                    }
                    catch (PackageManager$NameNotFoundException ex) {
                        return sb.toString();
                    }
                }
                catch (PackageManager$NameNotFoundException ex2) {}
            }
            catch (PackageManager$NameNotFoundException ex3) {}
        }
        return sb.toString();
    }
    
    public PendingIntent nA(final Context context, final int n, final int n2) {
        return this.nL(context, n, n2, null);
    }
    
    public boolean nC(final int n) {
        return k.oc(n);
    }
    
    public Intent nJ(final Context context, final int n, final String s) {
        switch (n) {
            default: {
                return null;
            }
            case 1:
            case 2: {
                return t.hE("com.google.android.gms", this.nV(context, s));
            }
            case 42: {
                return t.hG();
            }
            case 3: {
                return t.hD("com.google.android.gms");
            }
        }
    }
    
    public PendingIntent nL(final Context context, int n, final int n2, final String s) {
        if (c.jx(context) && n == 2) {
            n = 42;
        }
        final Intent nj = this.nJ(context, n, s);
        if (nj != null) {
            return PendingIntent.getActivity(context, n2, nj, 268435456);
        }
        return null;
    }
    
    public Intent nM(final int n) {
        return this.nJ(null, n, null);
    }
    
    public int nN(final Context context) {
        int op = k.op(context);
        if (k.or(context, op)) {
            op = 18;
        }
        return op;
    }
    
    public boolean nP(final Context context, final int n) {
        return k.or(context, n);
    }
    
    public boolean nT(final Context context, final String s) {
        return k.oi(context, s);
    }
    
    public void nU(final Context context) {
        k.on(context);
    }
}
