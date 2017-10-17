// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.view.View$BaseSavedState;

public class PagedView$SavedState extends View$BaseSavedState
{
    public static final Parcelable$Creator CREATOR;
    int currentPage;
    
    static {
        CREATOR = (Parcelable$Creator)new PagedView$SavedState$1();
    }
    
    PagedView$SavedState(final Parcel parcel) {
        super(parcel);
        this.currentPage = -1;
        this.currentPage = parcel.readInt();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeInt(this.currentPage);
    }
}
