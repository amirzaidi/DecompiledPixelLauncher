// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.app.PendingIntent;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class SignInResponse extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    final int Kf;
    private final ResolveAccountResponse Kg;
    private final ConnectionResult Kh;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    public SignInResponse(final int n) {
        this(new ConnectionResult(n, null), null);
    }
    
    SignInResponse(final int kf, final ConnectionResult kh, final ResolveAccountResponse kg) {
        this.Kf = kf;
        this.Kh = kh;
        this.Kg = kg;
    }
    
    public SignInResponse(final ConnectionResult connectionResult, final ResolveAccountResponse resolveAccountResponse) {
        this(1, connectionResult, resolveAccountResponse);
    }
    
    public ResolveAccountResponse Qm() {
        return this.Kg;
    }
    
    public ConnectionResult Qn() {
        return this.Kh;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.PU(this, parcel, n);
    }
}
