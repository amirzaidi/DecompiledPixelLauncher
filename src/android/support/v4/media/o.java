// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable$Creator;

class o implements Parcelable$Creator
{
    public RatingCompat createFromParcel(final Parcel parcel) {
        return new RatingCompat(parcel.readInt(), parcel.readFloat());
    }
    
    public RatingCompat[] newArray(final int n) {
        return new RatingCompat[n];
    }
}
