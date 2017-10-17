// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import com.google.android.gms.common.internal.l;
import android.content.SharedPreferences;
import android.util.Base64;
import android.content.SharedPreferences$Editor;
import android.util.Log;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.a;

class t implements a
{
    final /* synthetic */ c mq;
    final /* synthetic */ d mr;
    final /* synthetic */ String ms;
    final /* synthetic */ int mt;
    
    t(final c mq, final d mr, final String ms, final int mt) {
        this.mq = mq;
        this.mr = mr;
        this.ms = ms;
        this.mt = mt;
    }
    
    public void pw(final com.google.android.gms.phenotype.b b) {
        if (b.dr().dF()) {
            this.mq.cI(b.oF());
            this.mq.lJ.oA(this.mq.lF, b.oF().ly).ds(new u(this));
            return;
        }
        final String mPackageName = this.mq.mPackageName;
        Log.e("PhenotypeFlagCommitter", new StringBuilder(String.valueOf(mPackageName).length() + 31).append("Retrieving snapshot for ").append(mPackageName).append(" failed").toString());
        if (this.mr != null) {
            this.mr.cJ(false);
        }
    }
}
