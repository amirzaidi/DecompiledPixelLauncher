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

public abstract class bi extends aD implements DialogInterface$OnCancelListener
{
    protected boolean mStarted;
    private final Handler ue;
    protected boolean uf;
    private ConnectionResult ug;
    private int uh;
    protected final a ui;
    
    protected bi(final aw aw) {
        this(aw, a.getInstance());
    }
    
    bi(final aw aw, final a ui) {
        super(aw);
        this.uh = -1;
        this.ue = new Handler(Looper.getMainLooper());
        this.ui = ui;
    }
    
    public void onActivityResult(final int n, final int n2, final Intent intent) {
        final int n3 = 18;
        final int n4 = 13;
        final boolean b = true;
        boolean b2 = false;
        switch (n) {
            case 2: {
                final int qz = this.ui.qz((Context)this.getActivity());
                if (qz == 0) {
                    b2 = b;
                }
                if (this.ug.qh() == n3 && qz == n3) {
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
                    this.ug = new ConnectionResult(intExtra, null);
                    break;
                }
                break;
            }
        }
        if (!b2) {
            this.yy(this.ug, this.uh);
        }
        else {
            this.yC();
        }
    }
    
    public void onCancel(final DialogInterface dialogInterface) {
        this.yy(new ConnectionResult(13, null), this.uh);
        this.yC();
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.uf = bundle.getBoolean("resolving_error", false);
            if (this.uf) {
                this.uh = bundle.getInt("failed_client_id", -1);
                this.ug = new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent)bundle.getParcelable("failed_resolution"));
            }
        }
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", this.uf);
        if (this.uf) {
            bundle.putInt("failed_client_id", this.uh);
            bundle.putInt("failed_status", this.ug.qh());
            bundle.putParcelable("failed_resolution", (Parcelable)this.ug.ql());
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
    
    protected abstract void yB();
    
    protected void yC() {
        this.uh = -1;
        this.uf = false;
        this.ug = null;
        this.yB();
    }
    
    protected abstract void yy(final ConnectionResult p0, final int p1);
    
    public void yz(final ConnectionResult ug, final int uh) {
        if (!this.uf) {
            this.uf = true;
            this.uh = uh;
            this.ug = ug;
            this.ue.post((Runnable)new cq(this, null));
        }
    }
}
