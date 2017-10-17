// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import com.google.android.gms.common.internal.l;
import android.content.SharedPreferences;
import android.util.Base64;
import android.content.SharedPreferences$Editor;
import com.google.android.gms.common.api.d;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.a;

class u implements a
{
    final /* synthetic */ t mu;
    
    u(final t mu) {
        this.mu = mu;
    }
    
    public void zzv(final Status status) {
        if (status.dF()) {
            final String value = String.valueOf(this.mu.mq.mPackageName);
            final int length = value.length();
            final String s = "Experiment Configs successfully retrieved for ";
            final String s2 = "PhenotypeFlagCommitter";
            String concat;
            if (length == 0) {
                concat = new String(s);
            }
            else {
                concat = s.concat(value);
            }
            Log.i(s2, concat);
            if (this.mu.mr != null) {
                this.mu.mr.cJ(true);
            }
        }
        else {
            final String mPackageName = this.mu.mq.mPackageName;
            Log.w("PhenotypeFlagCommitter", new StringBuilder(String.valueOf(mPackageName).length() + 41).append("Committing snapshot for ").append(mPackageName).append(" failed, retrying").toString());
            this.mu.mq.oV(this.mu.ms, this.mu.mr, this.mu.mt - 1);
        }
    }
}
