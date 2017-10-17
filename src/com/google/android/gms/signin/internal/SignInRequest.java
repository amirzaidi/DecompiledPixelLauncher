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
    final int JN;
    final ResolveAccountRequest JO;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    SignInRequest(final int jn, final ResolveAccountRequest jo) {
        this.JN = jn;
        this.JO = jo;
    }
    
    public SignInRequest(final ResolveAccountRequest resolveAccountRequest) {
        this(1, resolveAccountRequest);
    }
    
    public ResolveAccountRequest PV() {
        return this.JO;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.PX(this, parcel, n);
    }
}
