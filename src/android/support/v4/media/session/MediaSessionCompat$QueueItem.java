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
    private Object adZ;
    private final MediaDescriptionCompat aea;
    private final long aeb;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    MediaSessionCompat$QueueItem(final Parcel parcel) {
        this.aea = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        this.aeb = parcel.readLong();
    }
    
    private MediaSessionCompat$QueueItem(final Object adZ, final MediaDescriptionCompat aea, final long aeb) {
        if (aea == null) {
            throw new IllegalArgumentException("Description cannot be null.");
        }
        if (aeb == -1) {
            throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
        }
        this.aea = aea;
        this.aeb = aeb;
        this.adZ = adZ;
    }
    
    public static List arF(final List list) {
        if (list != null && Build$VERSION.SDK_INT >= 21) {
            final ArrayList<MediaSessionCompat$QueueItem> list2 = new ArrayList<MediaSessionCompat$QueueItem>();
            final Iterator<Object> iterator = list.iterator();
            while (iterator.hasNext()) {
                list2.add(arG(iterator.next()));
            }
            return list2;
        }
        return null;
    }
    
    public static MediaSessionCompat$QueueItem arG(final Object o) {
        if (o != null && Build$VERSION.SDK_INT >= 21) {
            return new MediaSessionCompat$QueueItem(o, MediaDescriptionCompat.asB(u.arL(o)), u.arM(o));
        }
        return null;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public String toString() {
        return "MediaSession.QueueItem {Description=" + this.aea + ", Id=" + this.aeb + " }";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        this.aea.writeToParcel(parcel, n);
        parcel.writeLong(this.aeb);
    }
}
