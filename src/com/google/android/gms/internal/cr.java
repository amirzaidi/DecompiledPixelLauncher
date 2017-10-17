// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.app.Dialog;

class cr extends by
{
    final /* synthetic */ cw wR;
    final /* synthetic */ Dialog wS;
    
    cr(final cw wr, final Dialog ws) {
        this.wR = wr;
        this.wS = ws;
    }
    
    public void zq() {
        this.wR.wZ.yD();
        if (this.wS.isShowing()) {
            this.wS.dismiss();
        }
    }
}
