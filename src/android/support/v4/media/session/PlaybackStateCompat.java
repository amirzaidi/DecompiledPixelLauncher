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
    final long aff;
    final long afg;
    final long afh;
    final Bundle afi;
    List afj;
    final long afk;
    final int afl;
    private Object afm;
    final CharSequence afn;
    final long afo;
    final float afp;
    final int mState;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    PlaybackStateCompat(final int mState, final long afo, final long afg, final float afp, final long aff, final int afl, final CharSequence afn, final long afh, final List list, final long afk, final Bundle afi) {
        this.mState = mState;
        this.afo = afo;
        this.afg = afg;
        this.afp = afp;
        this.aff = aff;
        this.afl = afl;
        this.afn = afn;
        this.afh = afh;
        this.afj = new ArrayList(list);
        this.afk = afk;
        this.afi = afi;
    }
    
    PlaybackStateCompat(final Parcel parcel) {
        this.mState = parcel.readInt();
        this.afo = parcel.readLong();
        this.afp = parcel.readFloat();
        this.afh = parcel.readLong();
        this.afg = parcel.readLong();
        this.aff = parcel.readLong();
        this.afn = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.afj = parcel.createTypedArrayList(PlaybackStateCompat$CustomAction.CREATOR);
        this.afk = parcel.readLong();
        this.afi = parcel.readBundle();
        this.afl = parcel.readInt();
    }
    
    public static PlaybackStateCompat asM(final Object afm) {
        if (afm != null && Build$VERSION.SDK_INT >= 21) {
            final List g = f.asG(afm);
            ArrayList list = null;
            if (g != null) {
                list = new ArrayList<PlaybackStateCompat$CustomAction>(g.size());
                final Iterator<Object> iterator = g.iterator();
                while (iterator.hasNext()) {
                    list.add(PlaybackStateCompat$CustomAction.asY(iterator.next()));
                }
            }
            Bundle n;
            if (Build$VERSION.SDK_INT < 22) {
                n = null;
            }
            else {
                n = i.asN(afm);
            }
            final PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(f.asL(afm), f.asD(afm), f.asF(afm), f.asE(afm), f.asK(afm), 0, f.asJ(afm), f.asH(afm), list, f.asI(afm), n);
            playbackStateCompat.afm = afm;
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
        sb.append(", position=").append(this.afo);
        sb.append(", buffered position=").append(this.afg);
        sb.append(", speed=").append(this.afp);
        sb.append(", updated=").append(this.afh);
        sb.append(", actions=").append(this.aff);
        sb.append(", error code=").append(this.afl);
        sb.append(", error message=").append(this.afn);
        sb.append(", custom actions=").append(this.afj);
        sb.append(", active item id=").append(this.afk);
        sb.append("}");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.mState);
        parcel.writeLong(this.afo);
        parcel.writeFloat(this.afp);
        parcel.writeLong(this.afh);
        parcel.writeLong(this.afg);
        parcel.writeLong(this.aff);
        TextUtils.writeToParcel(this.afn, parcel, n);
        parcel.writeTypedList(this.afj);
        parcel.writeLong(this.afk);
        parcel.writeBundle(this.afi);
        parcel.writeInt(this.afl);
    }
}
