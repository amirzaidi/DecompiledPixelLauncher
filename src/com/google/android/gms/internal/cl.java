// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.app.Dialog;

class cl extends bs
{
    final /* synthetic */ cq wX;
    final /* synthetic */ Dialog wY;
    
    cl(final cq wx, final Dialog wy) {
        this.wX = wx;
        this.wY = wy;
    }
    
    public void zp() {
        this.wX.xf.yC();
        if (this.wY.isShowing()) {
            this.wY.dismiss();
        }
    }
}
