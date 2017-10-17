// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import com.google.android.gms.common.internal.l;
import android.content.SharedPreferences;
import android.util.Base64;
import android.content.SharedPreferences$Editor;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.api.v;

class u implements v
{
    final /* synthetic */ t zl;
    
    u(final t zl) {
        this.zl = zl;
    }
    
    public void zzv(final Status status) {
        if (status.gY()) {
            final String value = String.valueOf(this.zl.zh.mPackageName);
            final int length = value.length();
            final String s = "PhenotypeFlagCommitter";
            final String s2 = "Experiment Configs successfully retrieved for ";
            String concat;
            if (length == 0) {
                concat = new String(s2);
            }
            else {
                concat = s2.concat(value);
            }
            Log.i(s, concat);
            if (this.zl.zi != null) {
                this.zl.zi.dV(true);
            }
        }
        else {
            final String mPackageName = this.zl.zh.mPackageName;
            Log.w("PhenotypeFlagCommitter", new StringBuilder(String.valueOf(mPackageName).length() + 41).append("Committing snapshot for ").append(mPackageName).append(" failed, retrying").toString());
            this.zl.zh.CF(this.zl.zj, this.zl.zi, this.zl.zk - 1);
        }
    }
}
