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
    final int LK;
    private final ResolveAccountResponse LL;
    private final ConnectionResult LM;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    public SignInResponse(final int n) {
        this(new ConnectionResult(n, null), null);
    }
    
    SignInResponse(final int lk, final ConnectionResult lm, final ResolveAccountResponse ll) {
        this.LK = lk;
        this.LM = lm;
        this.LL = ll;
    }
    
    public SignInResponse(final ConnectionResult connectionResult, final ResolveAccountResponse resolveAccountResponse) {
        this(1, connectionResult, resolveAccountResponse);
    }
    
    public ResolveAccountResponse Rf() {
        return this.LL;
    }
    
    public ConnectionResult Rg() {
        return this.LM;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.QN(this, parcel, n);
    }
}
