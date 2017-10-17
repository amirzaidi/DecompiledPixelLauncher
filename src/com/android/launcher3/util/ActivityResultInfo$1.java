// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.os.Parcel;
import android.os.Parcelable$Creator;

final class ActivityResultInfo$1 implements Parcelable$Creator
{
    public ActivityResultInfo createFromParcel(final Parcel parcel) {
        return new ActivityResultInfo(parcel, null);
    }
    
    public ActivityResultInfo[] newArray(final int n) {
        return new ActivityResultInfo[n];
    }
}
