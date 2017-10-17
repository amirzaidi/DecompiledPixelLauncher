// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.os.Parcel;
import android.os.Parcelable$Creator;

final class PinItemDragListener$1 implements Parcelable$Creator
{
    public PinItemDragListener createFromParcel(final Parcel parcel) {
        return new PinItemDragListener(parcel, null);
    }
    
    public PinItemDragListener[] newArray(final int n) {
        return new PinItemDragListener[n];
    }
}
