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
    public static final int nu;
    private static final f nv;
    
    static {
        nu = k.nA;
        nv = new f();
    }
    
    private String qH(final Context context, final String s) {
        final StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(f.nu);
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
    
    public boolean qB(final Context context, final int n) {
        return k.rd(context, n);
    }
    
    public boolean qF(final Context context, final String s) {
        return k.qU(context, s);
    }
    
    public void qG(final Context context) {
        k.qZ(context);
    }
    
    public PendingIntent qn(final Context context, final int n, final int n2) {
        return this.qx(context, n, n2, null);
    }
    
    public boolean qp(final int n) {
        return k.qO(n);
    }
    
    public Intent qv(final Context context, final int n, final String s) {
        switch (n) {
            default: {
                return null;
            }
            case 1:
            case 2: {
                return t.ks("com.google.android.gms", this.qH(context, s));
            }
            case 42: {
                return t.ku();
            }
            case 3: {
                return t.kr("com.google.android.gms");
            }
        }
    }
    
    public PendingIntent qx(final Context context, int n, final int n2, final String s) {
        if (c.ml(context) && n == 2) {
            n = 42;
        }
        final Intent qv = this.qv(context, n, s);
        if (qv != null) {
            return PendingIntent.getActivity(context, n2, qv, 268435456);
        }
        return null;
    }
    
    public Intent qy(final int n) {
        return this.qv(null, n, null);
    }
    
    public int qz(final Context context) {
        int rb = k.rb(context);
        if (k.rd(context, rb)) {
            rb = 18;
        }
        return rb;
    }
}
