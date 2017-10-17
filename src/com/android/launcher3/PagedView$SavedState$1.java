// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.Parcel;
import android.os.Parcelable$Creator;

final class PagedView$SavedState$1 implements Parcelable$Creator
{
    public PagedView$SavedState createFromParcel(final Parcel parcel) {
        return new PagedView$SavedState(parcel);
    }
    
    public PagedView$SavedState[] newArray(final int n) {
        return new PagedView$SavedState[n];
    }
}
