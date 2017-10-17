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
    private final int afm;
    private final float afn;
    
    static {
        CREATOR = (Parcelable$Creator)new o();
    }
    
    RatingCompat(final int afm, final float afn) {
        this.afm = afm;
        this.afn = afn;
    }
    
    public int describeContents() {
        return this.afm;
    }
    
    public String toString() {
        final StringBuilder append = new StringBuilder().append("Rating:style=").append(this.afm).append(" rating=");
        String value;
        if (this.afn < 0.0f) {
            value = "unrated";
        }
        else {
            value = String.valueOf(this.afn);
        }
        return append.append(value).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.afm);
        parcel.writeFloat(this.afn);
    }
}
