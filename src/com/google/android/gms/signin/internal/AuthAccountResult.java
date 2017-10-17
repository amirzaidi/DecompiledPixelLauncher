// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import android.content.Intent;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class AuthAccountResult extends AbstractSafeParcelable implements b
{
    public static final Parcelable$Creator CREATOR;
    private int Kc;
    final int Kd;
    private Intent Ke;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    public AuthAccountResult() {
        this(0, null);
    }
    
    AuthAccountResult(final int kd, final int kc, final Intent ke) {
        this.Kd = kd;
        this.Kc = kc;
        this.Ke = ke;
    }
    
    public AuthAccountResult(final int n, final Intent intent) {
        this(2, n, intent);
    }
    
    public Intent Qk() {
        return this.Ke;
    }
    
    public int Ql() {
        return this.Kc;
    }
    
    public Status dr() {
        if (this.Kc != 0) {
            return Status.dR;
        }
        return Status.dU;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.Qq(this, parcel, n);
    }
}
