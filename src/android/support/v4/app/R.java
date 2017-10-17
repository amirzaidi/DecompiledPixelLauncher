// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable$Creator;

class r implements Parcelable$Creator
{
    public Fragment$SavedState createFromParcel(final Parcel parcel) {
        return new Fragment$SavedState(parcel, null);
    }
    
    public Fragment$SavedState[] newArray(final int n) {
        return new Fragment$SavedState[n];
    }
}
