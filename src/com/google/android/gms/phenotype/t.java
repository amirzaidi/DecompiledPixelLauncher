// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import com.google.android.gms.common.internal.l;
import android.content.SharedPreferences;
import android.util.Base64;
import android.content.SharedPreferences$Editor;
import com.google.android.gms.common.api.m;
import android.util.Log;
import com.google.android.gms.common.api.v;

class t implements v
{
    final /* synthetic */ a zh;
    final /* synthetic */ b zi;
    final /* synthetic */ String zj;
    final /* synthetic */ int zk;
    
    t(final a zh, final b zi, final String zj, final int zk) {
        this.zh = zh;
        this.zi = zi;
        this.zj = zj;
        this.zk = zk;
    }
    
    public void Dv(final r r) {
        if (r.gV().gY()) {
            this.zh.dU(r.sx());
            this.zh.xR.sr(this.zh.xN, r.sx().xX).gF(new u(this));
            return;
        }
        final String mPackageName = this.zh.mPackageName;
        Log.e("PhenotypeFlagCommitter", new StringBuilder(String.valueOf(mPackageName).length() + 31).append("Retrieving snapshot for ").append(mPackageName).append(" failed").toString());
        if (this.zi != null) {
            this.zi.dV(false);
        }
    }
}
