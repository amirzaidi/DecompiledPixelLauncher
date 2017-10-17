// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import com.google.android.gms.common.internal.l;
import android.content.SharedPreferences;
import android.util.Base64;
import android.content.SharedPreferences$Editor;
import android.util.Log;
import com.google.android.gms.common.api.d;

public abstract class c
{
    protected final d lF;
    private long lG;
    private final int lH;
    private final int lI;
    private final a lJ;
    protected final String mPackageName;
    
    public c(final d lf, final a lj, final String mPackageName) {
        this.lI = 3;
        this.lH = 2000;
        this.lF = lf;
        this.lJ = lj;
        this.mPackageName = mPackageName;
        this.lG = 2000L;
    }
    
    public c(final d d, final String s) {
        this(d, f.lQ, s);
    }
    
    private void oV(final String s, final com.google.android.gms.phenotype.d d, final int n) {
        if (n > 0) {
            this.lJ.oD(this.lF, this.mPackageName, s, this.oW()).ds(new t(this, d, s, n));
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
        if (d != null) {
            d.cJ(false);
        }
    }
    
    private static void oY(final SharedPreferences$Editor sharedPreferences$Editor, final Configuration configuration) {
        int i = 0;
        if (configuration != null) {
            final String[] ln = configuration.lN;
            for (int length = ln.length, j = 0; j < length; ++j) {
                sharedPreferences$Editor.remove(ln[j]);
            }
            for (Flag[] ll = configuration.lL; i < ll.length; ++i) {
                final Flag flag = ll[i];
                switch (flag.ld) {
                    case 1: {
                        sharedPreferences$Editor.putLong(flag.name, flag.oG());
                        break;
                    }
                    case 2: {
                        sharedPreferences$Editor.putBoolean(flag.name, flag.oK());
                        break;
                    }
                    case 3: {
                        sharedPreferences$Editor.putFloat(flag.name, (float)flag.oI());
                        break;
                    }
                    case 4: {
                        sharedPreferences$Editor.putString(flag.name, flag.oL());
                        break;
                    }
                    case 5: {
                        sharedPreferences$Editor.putString(flag.name, Base64.encodeToString(flag.oM(), 3));
                        break;
                    }
                }
            }
        }
    }
    
    public static void oZ(final SharedPreferences sharedPreferences, final Configurations configurations) {
        int i = 0;
        final SharedPreferences$Editor edit = sharedPreferences.edit();
        if (!configurations.lD) {
            edit.clear();
        }
        for (Configuration[] la = configurations.lA; i < la.length; ++i) {
            oY(edit, la[i]);
        }
        edit.putString("__phenotype_server_token", configurations.lC);
        edit.putString("__phenotype_snapshot_token", configurations.ly);
        if (!edit.commit()) {
            Log.w("PhenotypeFlagCommitter", "Failed to commit Phenotype configs to SharedPreferences!");
        }
    }
    
    protected abstract void cI(final Configurations p0);
    
    protected String oW() {
        return null;
    }
    
    public final void oX(final String s, final com.google.android.gms.phenotype.d d) {
        l.ht(s);
        this.oV(s, d, 3);
    }
}
