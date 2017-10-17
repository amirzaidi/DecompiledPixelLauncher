// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.accounts.Account;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ResolveAccountRequest extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int kb;
    final int kc;
    private final GoogleSignInAccount kd;
    private final Account ke;
    
    static {
        CREATOR = (Parcelable$Creator)new H();
    }
    
    ResolveAccountRequest(final int kc, final Account ke, final int kb, final GoogleSignInAccount kd) {
        this.kc = kc;
        this.ke = ke;
        this.kb = kb;
        this.kd = kd;
    }
    
    public ResolveAccountRequest(final Account account, final int n, final GoogleSignInAccount googleSignInAccount) {
        this(2, account, n, googleSignInAccount);
    }
    
    public Account getAccount() {
        return this.ke;
    }
    
    public int mb() {
        return this.kb;
    }
    
    public GoogleSignInAccount mc() {
        return this.kd;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        H.lq(this, parcel, n);
    }
}
