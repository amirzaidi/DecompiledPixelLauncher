// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import com.google.android.gms.common.internal.l;
import android.content.SharedPreferences;
import android.util.Base64;
import android.content.SharedPreferences$Editor;
import android.util.Log;
import com.google.android.gms.common.api.v;

public abstract class a
{
    protected final String mPackageName;
    protected final com.google.android.gms.common.api.a xN;
    private long xO;
    private final int xP;
    private final int xQ;
    private final c xR;
    
    public a(final com.google.android.gms.common.api.a xn, final c xr, final String mPackageName) {
        this.xQ = 3;
        this.xP = 2000;
        this.xN = xn;
        this.xR = xr;
        this.mPackageName = mPackageName;
        this.xO = 2000L;
    }
    
    public a(final com.google.android.gms.common.api.a a, final String s) {
        this(a, g.yL, s);
    }
    
    private void CF(final String s, final b b, final int n) {
        if (n > 0) {
            this.xR.sq(this.xN, this.mPackageName, s, this.CG()).gF(new t(this, b, s, n));
            return;
        }
        final String value = String.valueOf(this.mPackageName);
        final int length = value.length();
        final String s2 = "PhenotypeFlagCommitter";
        final String s3 = "No more attempts remaining, giving up for ";
        String concat;
        if (length == 0) {
            concat = new String(s3);
        }
        else {
            concat = s3.concat(value);
        }
        Log.e(s2, concat);
        if (b != null) {
            b.dV(false);
        }
    }
    
    private static void CI(final SharedPreferences$Editor sharedPreferences$Editor, final Configuration configuration) {
        int i = 0;
        if (configuration != null) {
            final String[] xv = configuration.xV;
            for (int length = xv.length, j = 0; j < length; ++j) {
                sharedPreferences$Editor.remove(xv[j]);
            }
            for (Flag[] xt = configuration.xT; i < xt.length; ++i) {
                final Flag flag = xt[i];
                switch (flag.yH) {
                    case 1: {
                        sharedPreferences$Editor.putLong(flag.name, flag.CS());
                        break;
                    }
                    case 2: {
                        sharedPreferences$Editor.putBoolean(flag.name, flag.CW());
                        break;
                    }
                    case 3: {
                        sharedPreferences$Editor.putFloat(flag.name, (float)flag.CU());
                        break;
                    }
                    case 4: {
                        sharedPreferences$Editor.putString(flag.name, flag.CX());
                        break;
                    }
                    case 5: {
                        sharedPreferences$Editor.putString(flag.name, Base64.encodeToString(flag.CY(), 3));
                        break;
                    }
                }
            }
        }
    }
    
    public static void CJ(final SharedPreferences sharedPreferences, final Configurations configurations) {
        int i = 0;
        final SharedPreferences$Editor edit = sharedPreferences.edit();
        if (!configurations.yc) {
            edit.clear();
        }
        for (Configuration[] xz = configurations.xZ; i < xz.length; ++i) {
            CI(edit, xz[i]);
        }
        edit.putString("__phenotype_server_token", configurations.yb);
        edit.putString("__phenotype_snapshot_token", configurations.xX);
        if (!edit.commit()) {
            Log.w("PhenotypeFlagCommitter", "Failed to commit Phenotype configs to SharedPreferences!");
        }
    }
    
    protected String CG() {
        return null;
    }
    
    public final void CH(final String s, final b b) {
        l.kh(s);
        this.CF(s, b, 3);
    }
    
    protected abstract void dU(final Configurations p0);
}
