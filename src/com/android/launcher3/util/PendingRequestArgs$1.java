// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.os.Parcel;
import android.os.Parcelable$Creator;

final class PendingRequestArgs$1 implements Parcelable$Creator
{
    public PendingRequestArgs createFromParcel(final Parcel parcel) {
        return new PendingRequestArgs(parcel);
    }
    
    public PendingRequestArgs[] newArray(final int n) {
        return new PendingRequestArgs[n];
    }
}
