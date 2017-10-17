// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.Iterator;
import java.util.ArrayList;
import android.os.Build$VERSION;
import java.util.List;
import android.os.Parcel;
import android.support.v4.media.MediaDescriptionCompat;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public final class MediaSessionCompat$QueueItem implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    private Object aeV;
    private final MediaDescriptionCompat aeW;
    private final long aeX;
    
    static {
        CREATOR = (Parcelable$Creator)new m();
    }
    
    MediaSessionCompat$QueueItem(final Parcel parcel) {
        this.aeW = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        this.aeX = parcel.readLong();
    }
    
    private MediaSessionCompat$QueueItem(final Object aeV, final MediaDescriptionCompat aeW, final long aeX) {
        if (aeW == null) {
            throw new IllegalArgumentException("Description cannot be null.");
        }
        if (aeX == -1) {
            throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
        }
        this.aeW = aeW;
        this.aeX = aeX;
        this.aeV = aeV;
    }
    
    public static List ass(final List list) {
        if (list != null && Build$VERSION.SDK_INT >= 21) {
            final ArrayList<MediaSessionCompat$QueueItem> list2 = new ArrayList<MediaSessionCompat$QueueItem>();
            final Iterator<Object> iterator = list.iterator();
            while (iterator.hasNext()) {
                list2.add(ast(iterator.next()));
            }
            return list2;
        }
        return null;
    }
    
    public static MediaSessionCompat$QueueItem ast(final Object o) {
        if (o != null && Build$VERSION.SDK_INT >= 21) {
            return new MediaSessionCompat$QueueItem(o, MediaDescriptionCompat.aty(e.asB(o)), e.asC(o));
        }
        return null;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public String toString() {
        return "MediaSession.QueueItem {Description=" + this.aeW + ", Id=" + this.aeX + " }";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        this.aeW.writeToParcel(parcel, n);
        parcel.writeLong(this.aeX);
    }
}
