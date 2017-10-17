// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable$Creator;

class y implements Parcelable$Creator
{
    public ParcelableVolumeInfo createFromParcel(final Parcel parcel) {
        return new ParcelableVolumeInfo(parcel);
    }
    
    public ParcelableVolumeInfo[] newArray(final int n) {
        return new ParcelableVolumeInfo[n];
    }
}
