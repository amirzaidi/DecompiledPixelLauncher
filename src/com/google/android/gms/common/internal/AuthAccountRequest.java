// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.IBinder;
import com.google.android.gms.common.api.Scope;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class AuthAccountRequest extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    Integer kg;
    final Scope[] kh;
    final int ki;
    final IBinder kj;
    Integer kk;
    
    static {
        CREATOR = (Parcelable$Creator)new K();
    }
    
    AuthAccountRequest(final int ki, final IBinder kj, final Scope[] kh, final Integer kg, final Integer kk) {
        this.ki = ki;
        this.kj = kj;
        this.kh = kh;
        this.kg = kg;
        this.kk = kk;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        K.lJ(this, parcel, n);
    }
}
