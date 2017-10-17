// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.Iterator;
import android.os.Build$VERSION;
import android.text.TextUtils;
import android.os.Parcel;
import java.util.Collection;
import java.util.ArrayList;
import java.util.List;
import android.os.Bundle;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public final class PlaybackStateCompat implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    final long aei;
    final long aej;
    final long aek;
    final Bundle ael;
    List aem;
    final long aen;
    final int aeo;
    private Object aep;
    final CharSequence aeq;
    final long aer;
    final float aes;
    final int mState;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    PlaybackStateCompat(final int mState, final long aer, final long aej, final float aes, final long aei, final int aeo, final CharSequence aeq, final long aek, final List list, final long aen, final Bundle ael) {
        this.mState = mState;
        this.aer = aer;
        this.aej = aej;
        this.aes = aes;
        this.aei = aei;
        this.aeo = aeo;
        this.aeq = aeq;
        this.aek = aek;
        this.aem = new ArrayList(list);
        this.aen = aen;
        this.ael = ael;
    }
    
    PlaybackStateCompat(final Parcel parcel) {
        this.mState = parcel.readInt();
        this.aer = parcel.readLong();
        this.aes = parcel.readFloat();
        this.aek = parcel.readLong();
        this.aej = parcel.readLong();
        this.aei = parcel.readLong();
        this.aeq = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.aem = parcel.createTypedArrayList(PlaybackStateCompat$CustomAction.CREATOR);
        this.aen = parcel.readLong();
        this.ael = parcel.readBundle();
        this.aeo = parcel.readInt();
    }
    
    public static PlaybackStateCompat arW(final Object aep) {
        if (aep != null && Build$VERSION.SDK_INT >= 21) {
            final List arQ = w.arQ(aep);
            ArrayList list = null;
            if (arQ != null) {
                list = new ArrayList<PlaybackStateCompat$CustomAction>(arQ.size());
                final Iterator<Object> iterator = arQ.iterator();
                while (iterator.hasNext()) {
                    list.add(PlaybackStateCompat$CustomAction.asb(iterator.next()));
                }
            }
            Bundle arx;
            if (Build$VERSION.SDK_INT < 22) {
                arx = null;
            }
            else {
                arx = h.arx(aep);
            }
            final PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(w.arV(aep), w.arN(aep), w.arP(aep), w.arO(aep), w.arU(aep), 0, w.arT(aep), w.arR(aep), list, w.arS(aep), arx);
            playbackStateCompat.aep = aep;
            return playbackStateCompat;
        }
        return null;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder("PlaybackState {");
        sb.append("state=").append(this.mState);
        sb.append(", position=").append(this.aer);
        sb.append(", buffered position=").append(this.aej);
        sb.append(", speed=").append(this.aes);
        sb.append(", updated=").append(this.aek);
        sb.append(", actions=").append(this.aei);
        sb.append(", error code=").append(this.aeo);
        sb.append(", error message=").append(this.aeq);
        sb.append(", custom actions=").append(this.aem);
        sb.append(", active item id=").append(this.aen);
        sb.append("}");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.mState);
        parcel.writeLong(this.aer);
        parcel.writeFloat(this.aes);
        parcel.writeLong(this.aek);
        parcel.writeLong(this.aej);
        parcel.writeLong(this.aei);
        TextUtils.writeToParcel(this.aeq, parcel, n);
        parcel.writeTypedList(this.aem);
        parcel.writeLong(this.aen);
        parcel.writeBundle(this.ael);
        parcel.writeInt(this.aeo);
    }
}
