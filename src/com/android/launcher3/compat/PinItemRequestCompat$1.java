// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.os.Parcel;
import android.os.Parcelable$Creator;

final class PinItemRequestCompat$1 implements Parcelable$Creator
{
    public PinItemRequestCompat createFromParcel(final Parcel parcel) {
        return new PinItemRequestCompat(parcel.readParcelable((ClassLoader)null), null);
    }
    
    public PinItemRequestCompat[] newArray(final int n) {
        return new PinItemRequestCompat[n];
    }
}
