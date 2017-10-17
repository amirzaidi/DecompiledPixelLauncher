// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public class MediaBrowserCompat$MediaItem implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    private final MediaDescriptionCompat afk;
    private final int mFlags;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    MediaBrowserCompat$MediaItem(final Parcel parcel) {
        this.mFlags = parcel.readInt();
        this.afk = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
    }
    
    public int describeContents() {
        return 0;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder("MediaItem{");
        sb.append("mFlags=").append(this.mFlags);
        sb.append(", mDescription=").append(this.afk);
        sb.append('}');
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.mFlags);
        this.afk.writeToParcel(parcel, n);
    }
}
