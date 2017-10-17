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
    Integer ho;
    final Scope[] hp;
    final int hq;
    final IBinder hr;
    Integer hs;
    
    static {
        CREATOR = (Parcelable$Creator)new K();
    }
    
    AuthAccountRequest(final int hq, final IBinder hr, final Scope[] hp, final Integer ho, final Integer hs) {
        this.hq = hq;
        this.hr = hr;
        this.hp = hp;
        this.ho = ho;
        this.hs = hs;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        K.iV(this, parcel, n);
    }
}
