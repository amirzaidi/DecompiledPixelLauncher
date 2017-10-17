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

class cw implements Runnable
{
    final /* synthetic */ bo wZ;
    
    private cw(final bo wz) {
        this.wZ = wz;
    }
    
    public void run() {
        if (this.wZ.mStarted) {
            if (!this.wZ.ua.nx()) {
                if (!this.wZ.uc.nC(this.wZ.ua.nu())) {
                    if (this.wZ.ua.nu() != 18) {
                        this.wZ.yz(this.wZ.ua, this.wZ.ub);
                    }
                    else {
                        this.wZ.uc.nz(this.wZ.getActivity().getApplicationContext(), new cr(this, this.wZ.uc.nH(this.wZ.getActivity(), (DialogInterface$OnCancelListener)this.wZ)));
                    }
                }
                else {
                    this.wZ.uc.nD(this.wZ.getActivity(), this.wZ.sC, this.wZ.ua.nu(), 2, (DialogInterface$OnCancelListener)this.wZ);
                }
            }
            else {
                this.wZ.sC.startActivityForResult(GoogleApiActivity.eQ((Context)this.wZ.getActivity(), this.wZ.ua.ny(), this.wZ.ub, false), 1);
            }
        }
    }
}
