// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.os.Build$VERSION;
import android.os.Parcel;
import android.os.Bundle;
import android.support.v4.a.t;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public final class MediaMetadataCompat implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    private static final String[] aff;
    static final t afg;
    private static final String[] afh;
    private static final String[] afi;
    final Bundle afe;
    private Object afj;
    
    static {
        final int n = 3;
        final int n2 = 2;
        final int n3 = 1;
        (afg = new t()).put("android.media.metadata.TITLE", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.ARTIST", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.DURATION", 0);
        MediaMetadataCompat.afg.put("android.media.metadata.ALBUM", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.AUTHOR", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.WRITER", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.COMPOSER", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.COMPILATION", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.DATE", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.YEAR", 0);
        MediaMetadataCompat.afg.put("android.media.metadata.GENRE", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.TRACK_NUMBER", 0);
        MediaMetadataCompat.afg.put("android.media.metadata.NUM_TRACKS", 0);
        MediaMetadataCompat.afg.put("android.media.metadata.DISC_NUMBER", 0);
        MediaMetadataCompat.afg.put("android.media.metadata.ALBUM_ARTIST", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.ART", n2);
        MediaMetadataCompat.afg.put("android.media.metadata.ART_URI", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.ALBUM_ART", n2);
        MediaMetadataCompat.afg.put("android.media.metadata.ALBUM_ART_URI", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.USER_RATING", n);
        MediaMetadataCompat.afg.put("android.media.metadata.RATING", n);
        MediaMetadataCompat.afg.put("android.media.metadata.DISPLAY_TITLE", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.DISPLAY_SUBTITLE", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.DISPLAY_DESCRIPTION", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.DISPLAY_ICON", n2);
        MediaMetadataCompat.afg.put("android.media.metadata.DISPLAY_ICON_URI", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.MEDIA_ID", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        MediaMetadataCompat.afg.put("android.media.metadata.MEDIA_URI", n3);
        MediaMetadataCompat.afg.put("android.media.metadata.ADVERTISEMENT", 0);
        MediaMetadataCompat.afg.put("android.media.metadata.DOWNLOAD_STATUS", 0);
        final String[] aff2 = new String[7];
        aff2[0] = "android.media.metadata.TITLE";
        aff2[n3] = "android.media.metadata.ARTIST";
        aff2[n2] = "android.media.metadata.ALBUM";
        aff2[n] = "android.media.metadata.ALBUM_ARTIST";
        aff2[4] = "android.media.metadata.WRITER";
        aff2[5] = "android.media.metadata.AUTHOR";
        aff2[6] = "android.media.metadata.COMPOSER";
        aff = aff2;
        final String[] afh2 = new String[n];
        afh2[0] = "android.media.metadata.DISPLAY_ICON";
        afh2[n3] = "android.media.metadata.ART";
        afh2[n2] = "android.media.metadata.ALBUM_ART";
        afh = afh2;
        final String[] afi2 = new String[n];
        afi2[0] = "android.media.metadata.DISPLAY_ICON_URI";
        afi2[n3] = "android.media.metadata.ART_URI";
        afi2[n2] = "android.media.metadata.ALBUM_ART_URI";
        afi = afi2;
        CREATOR = (Parcelable$Creator)new p();
    }
    
    MediaMetadataCompat(final Parcel parcel) {
        this.afe = parcel.readBundle();
    }
    
    public static MediaMetadataCompat asD(final Object afj) {
        if (afj != null && Build$VERSION.SDK_INT >= 21) {
            final Parcel obtain = Parcel.obtain();
            d.asf(afj, obtain, 0);
            obtain.setDataPosition(0);
            final MediaMetadataCompat mediaMetadataCompat = (MediaMetadataCompat)MediaMetadataCompat.CREATOR.createFromParcel(obtain);
            obtain.recycle();
            mediaMetadataCompat.afj = afj;
            return mediaMetadataCompat;
        }
        return null;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeBundle(this.afe);
    }
}
