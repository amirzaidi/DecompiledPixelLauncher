// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import android.os.Parcel;
import android.os.ResultReceiver;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

final class MediaSessionCompat$ResultReceiverWrapper implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    private ResultReceiver aey;
    
    static {
        CREATOR = (Parcelable$Creator)new o();
    }
    
    MediaSessionCompat$ResultReceiverWrapper(final Parcel parcel) {
        this.aey = (ResultReceiver)ResultReceiver.CREATOR.createFromParcel(parcel);
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        this.aey.writeToParcel(parcel, n);
    }
}
