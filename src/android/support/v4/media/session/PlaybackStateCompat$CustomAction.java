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
    private final Bundle afA;
    private Object afB;
    private final String afx;
    private final int afy;
    private final CharSequence afz;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    PlaybackStateCompat$CustomAction(final Parcel parcel) {
        this.afx = parcel.readString();
        this.afz = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.afy = parcel.readInt();
        this.afA = parcel.readBundle();
    }
    
    PlaybackStateCompat$CustomAction(final String afx, final CharSequence afz, final int afy, final Bundle afA) {
        this.afx = afx;
        this.afz = afz;
        this.afy = afy;
        this.afA = afA;
    }
    
    public static PlaybackStateCompat$CustomAction asY(final Object afB) {
        if (afB != null && Build$VERSION.SDK_INT >= 21) {
            final PlaybackStateCompat$CustomAction playbackStateCompat$CustomAction = new PlaybackStateCompat$CustomAction(a.asw(afB), a.asx(afB), a.asv(afB), a.asu(afB));
            playbackStateCompat$CustomAction.afB = afB;
            return playbackStateCompat$CustomAction;
        }
        return null;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public String toString() {
        return "Action:mName='" + (Object)this.afz + ", mIcon=" + this.afy + ", mExtras=" + this.afA;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.afx);
        TextUtils.writeToParcel(this.afz, parcel, n);
        parcel.writeInt(this.afy);
        parcel.writeBundle(this.afA);
    }
}
