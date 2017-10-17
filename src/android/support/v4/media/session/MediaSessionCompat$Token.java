// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import android.os.IBinder;
import android.os.Build$VERSION;
import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public final class MediaSessionCompat$Token implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    private final IMediaSession aet;
    private final Object aeu;
    
    static {
        CREATOR = (Parcelable$Creator)new z();
    }
    
    MediaSessionCompat$Token(final Object o) {
        this(o, null);
    }
    
    MediaSessionCompat$Token(final Object aeu, final IMediaSession aet) {
        this.aeu = aeu;
        this.aet = aet;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        boolean b2 = false;
        if (this == o) {
            return b;
        }
        if (!(o instanceof MediaSessionCompat$Token)) {
            return false;
        }
        final MediaSessionCompat$Token mediaSessionCompat$Token = (MediaSessionCompat$Token)o;
        if (this.aeu != null) {
            return mediaSessionCompat$Token.aeu != null && this.aeu.equals(mediaSessionCompat$Token.aeu);
        }
        if (mediaSessionCompat$Token.aeu == null) {
            b2 = b;
        }
        return b2;
    }
    
    public int hashCode() {
        if (this.aeu != null) {
            return this.aeu.hashCode();
        }
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        if (Build$VERSION.SDK_INT < 21) {
            parcel.writeStrongBinder((IBinder)this.aeu);
        }
        else {
            parcel.writeParcelable((Parcelable)this.aeu, n);
        }
    }
}
