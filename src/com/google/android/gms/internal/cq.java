// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Parcelable;
import android.os.Bundle;
import android.content.DialogInterface;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Looper;
import com.google.android.gms.common.a;
import com.google.android.gms.common.ConnectionResult;
import android.os.Handler;
import android.content.Context;
import com.google.android.gms.common.api.GoogleApiActivity;
import android.content.DialogInterface$OnCancelListener;

class cq implements Runnable
{
    final /* synthetic */ bi xf;
    
    private cq(final bi xf) {
        this.xf = xf;
    }
    
    public void run() {
        if (this.xf.mStarted) {
            if (!this.xf.ug.qk()) {
                if (!this.xf.ui.qp(this.xf.ug.qh())) {
                    if (this.xf.ug.qh() != 18) {
                        this.xf.yy(this.xf.ug, this.xf.uh);
                    }
                    else {
                        this.xf.ui.qm(this.xf.getActivity().getApplicationContext(), new cl(this, this.xf.ui.qu(this.xf.getActivity(), (DialogInterface$OnCancelListener)this.xf)));
                    }
                }
                else {
                    this.xf.ui.qq(this.xf.getActivity(), this.xf.sI, this.xf.ug.qh(), 2, (DialogInterface$OnCancelListener)this.xf);
                }
            }
            else {
                this.xf.sI.startActivityForResult(GoogleApiActivity.hE((Context)this.xf.getActivity(), this.xf.ug.ql(), this.xf.uh, false), 1);
            }
        }
    }
}
