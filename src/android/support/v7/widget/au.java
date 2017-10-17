// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable$Creator;

class au implements Parcelable$Creator
{
    public LinearLayoutManager$SavedState createFromParcel(final Parcel parcel) {
        return new LinearLayoutManager$SavedState(parcel);
    }
    
    public LinearLayoutManager$SavedState[] newArray(final int n) {
        return new LinearLayoutManager$SavedState[n];
    }
}
