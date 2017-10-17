// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public final class RatingCompat implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int ago;
    private final float agp;
    
    static {
        CREATOR = (Parcelable$Creator)new o();
    }
    
    RatingCompat(final int ago, final float agp) {
        this.ago = ago;
        this.agp = agp;
    }
    
    public int describeContents() {
        return this.ago;
    }
    
    public String toString() {
        final StringBuilder append = new StringBuilder().append("Rating:style=").append(this.ago).append(" rating=");
        String value;
        if (this.agp < 0.0f) {
            value = "unrated";
        }
        else {
            value = String.valueOf(this.agp);
        }
        return append.append(value).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.ago);
        parcel.writeFloat(this.agp);
    }
}
