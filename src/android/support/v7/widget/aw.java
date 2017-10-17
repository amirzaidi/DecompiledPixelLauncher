// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable$Creator;

class aw implements Parcelable$Creator
{
    public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem createFromParcel(final Parcel parcel) {
        return new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem(parcel);
    }
    
    public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem[] newArray(final int n) {
        return new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem[n];
    }
}
