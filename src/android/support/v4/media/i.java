// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.os.Build$VERSION;
import android.os.Parcel;
import android.os.Parcelable$Creator;

class i implements Parcelable$Creator
{
    public MediaDescriptionCompat createFromParcel(final Parcel parcel) {
        if (Build$VERSION.SDK_INT >= 21) {
            return MediaDescriptionCompat.asB(m.asL(parcel));
        }
        return new MediaDescriptionCompat(parcel);
    }
    
    public MediaDescriptionCompat[] newArray(final int n) {
        return new MediaDescriptionCompat[n];
    }
}
