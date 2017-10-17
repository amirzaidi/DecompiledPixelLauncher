// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class SignInRequest extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    final int Ls;
    final ResolveAccountRequest Lt;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    SignInRequest(final int ls, final ResolveAccountRequest lt) {
        this.Ls = ls;
        this.Lt = lt;
    }
    
    public SignInRequest(final ResolveAccountRequest resolveAccountRequest) {
        this(1, resolveAccountRequest);
    }
    
    public ResolveAccountRequest QO() {
        return this.Lt;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.QQ(this, parcel, n);
    }
}
