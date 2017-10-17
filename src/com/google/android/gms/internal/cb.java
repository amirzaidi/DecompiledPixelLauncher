// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.c;

class cb extends bl
{
    final /* synthetic */ be wR;
    final /* synthetic */ c wS;
    
    cb(final be wr, final ci ci, final c ws) {
        this.wR = wr;
        this.wS = ws;
        super(ci);
    }
    
    public void yq() {
        this.wS.jp(new ConnectionResult(16, null));
    }
}
