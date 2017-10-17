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
    private ResultReceiver afw;
    
    static {
        CREATOR = (Parcelable$Creator)new s();
    }
    
    MediaSessionCompat$ResultReceiverWrapper(final Parcel parcel) {
        this.afw = (ResultReceiver)ResultReceiver.CREATOR.createFromParcel(parcel);
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        this.afw.writeToParcel(parcel, n);
    }
}
