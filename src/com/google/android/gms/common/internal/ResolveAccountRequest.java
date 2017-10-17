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
    private final int hj;
    final int hk;
    private final GoogleSignInAccount hl;
    private final Account hm;
    
    static {
        CREATOR = (Parcelable$Creator)new H();
    }
    
    ResolveAccountRequest(final int hk, final Account hm, final int hj, final GoogleSignInAccount hl) {
        this.hk = hk;
        this.hm = hm;
        this.hj = hj;
        this.hl = hl;
    }
    
    public ResolveAccountRequest(final Account account, final int n, final GoogleSignInAccount googleSignInAccount) {
        this(2, account, n, googleSignInAccount);
    }
    
    public Account getAccount() {
        return this.hm;
    }
    
    public int jn() {
        return this.hj;
    }
    
    public GoogleSignInAccount jo() {
        return this.hl;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        H.iC(this, parcel, n);
    }
}
