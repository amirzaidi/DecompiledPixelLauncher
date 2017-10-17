// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.os.Parcelable;
import android.util.SparseArray;

public class ParcelableSparseArray extends SparseArray implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    
    static {
        CREATOR = (Parcelable$Creator)new ParcelableSparseArray$1();
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final int size = this.size();
        parcel.writeInt(size);
        for (int i = 0; i < size; ++i) {
            parcel.writeInt(this.keyAt(i));
            parcel.writeParcelable((Parcelable)this.valueAt(i), 0);
        }
    }
}
