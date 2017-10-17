// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import android.os.Build$VERSION;
import android.os.Parcel;
import android.os.Parcelable$Creator;

class n implements Parcelable$Creator
{
    public MediaSessionCompat$Token createFromParcel(final Parcel parcel) {
        Object o;
        if (Build$VERSION.SDK_INT < 21) {
            o = parcel.readStrongBinder();
        }
        else {
            o = parcel.readParcelable((ClassLoader)null);
        }
        return new MediaSessionCompat$Token(o);
    }
    
    public MediaSessionCompat$Token[] newArray(final int n) {
        return new MediaSessionCompat$Token[n];
    }
}
