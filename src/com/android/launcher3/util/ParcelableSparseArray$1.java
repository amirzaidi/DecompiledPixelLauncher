// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.os.Parcel;
import android.os.Parcelable$Creator;

final class ParcelableSparseArray$1 implements Parcelable$Creator
{
    public ParcelableSparseArray createFromParcel(final Parcel parcel) {
        final ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        final ClassLoader classLoader = parcelableSparseArray.getClass().getClassLoader();
        for (int int1 = parcel.readInt(), i = 0; i < int1; ++i) {
            parcelableSparseArray.put(parcel.readInt(), (Object)parcel.readParcelable(classLoader));
        }
        return parcelableSparseArray;
    }
    
    public ParcelableSparseArray[] newArray(final int n) {
        return new ParcelableSparseArray[n];
    }
}
