// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import android.os.Build$VERSION;
import android.text.TextUtils;
import android.os.Parcel;
import android.os.Bundle;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public final class PlaybackStateCompat$CustomAction implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    private final String aeB;
    private final int aeC;
    private final CharSequence aeD;
    private final Bundle aeE;
    private Object aeF;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    PlaybackStateCompat$CustomAction(final Parcel parcel) {
        this.aeB = parcel.readString();
        this.aeD = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.aeC = parcel.readInt();
        this.aeE = parcel.readBundle();
    }
    
    PlaybackStateCompat$CustomAction(final String aeB, final CharSequence aeD, final int aeC, final Bundle aeE) {
        this.aeB = aeB;
        this.aeD = aeD;
        this.aeC = aeC;
        this.aeE = aeE;
    }
    
    public static PlaybackStateCompat$CustomAction asb(final Object aeF) {
        if (aeF != null && Build$VERSION.SDK_INT >= 21) {
            final PlaybackStateCompat$CustomAction playbackStateCompat$CustomAction = new PlaybackStateCompat$CustomAction(t.arJ(aeF), t.arK(aeF), t.arI(aeF), t.arH(aeF));
            playbackStateCompat$CustomAction.aeF = aeF;
            return playbackStateCompat$CustomAction;
        }
        return null;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public String toString() {
        return "Action:mName='" + (Object)this.aeD + ", mIcon=" + this.aeC + ", mExtras=" + this.aeE;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.aeB);
        TextUtils.writeToParcel(this.aeD, parcel, n);
        parcel.writeInt(this.aeC);
        parcel.writeBundle(this.aeE);
    }
}
