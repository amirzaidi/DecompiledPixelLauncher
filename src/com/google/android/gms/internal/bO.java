// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Parcelable;
import android.os.Bundle;
import android.content.DialogInterface;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import com.google.android.gms.common.a;
import com.google.android.gms.common.ConnectionResult;
import android.os.Handler;
import android.content.DialogInterface$OnCancelListener;

public abstract class bo extends aJ implements DialogInterface$OnCancelListener
{
    protected boolean mStarted;
    private final Handler tY;
    protected boolean tZ;
    private ConnectionResult ua;
    private int ub;
    protected final a uc;
    
    protected bo(final aC ac) {
        this(ac, a.nI());
    }
    
    bo(final aC ac, final a uc) {
        super(ac);
        this.ub = -1;
        this.tY = new Handler(Looper.getMainLooper());
        this.uc = uc;
    }
    
    public void onActivityResult(final int n, final int n2, final Intent intent) {
        final int n3 = 18;
        final int n4 = 13;
        final boolean b = true;
        boolean b2 = false;
        switch (n) {
            case 2: {
                final int nn = this.uc.nN((Context)this.getActivity());
                if (nn == 0) {
                    b2 = b;
                }
                if (this.ua.nu() == n3 && nn == n3) {
                    return;
                }
                break;
            }
            case 1: {
                if (n2 == -1) {
                    b2 = b;
                    break;
                }
                if (n2 == 0) {
                    int intExtra;
                    if (intent == null) {
                        intExtra = n4;
                    }
                    else {
                        intExtra = intent.getIntExtra("<<ResolutionFailureErrorDetail>>", n4);
                    }
                    this.ua = new ConnectionResult(intExtra, null);
                    break;
                }
                break;
            }
        }
        if (!b2) {
            this.yz(this.ua, this.ub);
        }
        else {
            this.yD();
        }
    }
    
    public void onCancel(final DialogInterface dialogInterface) {
        this.yz(new ConnectionResult(13, null), this.ub);
        this.yD();
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.tZ = bundle.getBoolean("resolving_error", false);
            if (this.tZ) {
                this.ub = bundle.getInt("failed_client_id", -1);
                this.ua = new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent)bundle.getParcelable("failed_resolution"));
            }
        }
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", this.tZ);
        if (this.tZ) {
            bundle.putInt("failed_client_id", this.ub);
            bundle.putInt("failed_status", this.ua.nu());
            bundle.putParcelable("failed_resolution", (Parcelable)this.ua.ny());
        }
    }
    
    public void onStart() {
        super.onStart();
        this.mStarted = true;
    }
    
    public void onStop() {
        super.onStop();
        this.mStarted = false;
    }
    
    public void yA(final ConnectionResult ua, final int ub) {
        if (!this.tZ) {
            this.tZ = true;
            this.ub = ub;
            this.ua = ua;
            this.tY.post((Runnable)new cw(this, null));
        }
    }
    
    protected abstract void yC();
    
    protected void yD() {
        this.ub = -1;
        this.tZ = false;
        this.ua = null;
        this.yC();
    }
    
    protected abstract void yz(final ConnectionResult p0, final int p1);
}
