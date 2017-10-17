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
    private static final String[] agh;
    static final t agi;
    private static final String[] agj;
    private static final String[] agk;
    final Bundle agg;
    private Object agl;
    
    static {
        final int n = 3;
        final int n2 = 2;
        final int n3 = 1;
        (agi = new t()).put("android.media.metadata.TITLE", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.ARTIST", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.DURATION", 0);
        MediaMetadataCompat.agi.put("android.media.metadata.ALBUM", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.AUTHOR", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.WRITER", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.COMPOSER", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.COMPILATION", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.DATE", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.YEAR", 0);
        MediaMetadataCompat.agi.put("android.media.metadata.GENRE", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.TRACK_NUMBER", 0);
        MediaMetadataCompat.agi.put("android.media.metadata.NUM_TRACKS", 0);
        MediaMetadataCompat.agi.put("android.media.metadata.DISC_NUMBER", 0);
        MediaMetadataCompat.agi.put("android.media.metadata.ALBUM_ARTIST", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.ART", n2);
        MediaMetadataCompat.agi.put("android.media.metadata.ART_URI", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.ALBUM_ART", n2);
        MediaMetadataCompat.agi.put("android.media.metadata.ALBUM_ART_URI", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.USER_RATING", n);
        MediaMetadataCompat.agi.put("android.media.metadata.RATING", n);
        MediaMetadataCompat.agi.put("android.media.metadata.DISPLAY_TITLE", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.DISPLAY_SUBTITLE", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.DISPLAY_DESCRIPTION", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.DISPLAY_ICON", n2);
        MediaMetadataCompat.agi.put("android.media.metadata.DISPLAY_ICON_URI", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.MEDIA_ID", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        MediaMetadataCompat.agi.put("android.media.metadata.MEDIA_URI", n3);
        MediaMetadataCompat.agi.put("android.media.metadata.ADVERTISEMENT", 0);
        MediaMetadataCompat.agi.put("android.media.metadata.DOWNLOAD_STATUS", 0);
        final String[] agh2 = new String[7];
        agh2[0] = "android.media.metadata.TITLE";
        agh2[n3] = "android.media.metadata.ARTIST";
        agh2[n2] = "android.media.metadata.ALBUM";
        agh2[n] = "android.media.metadata.ALBUM_ARTIST";
        agh2[4] = "android.media.metadata.WRITER";
        agh2[5] = "android.media.metadata.AUTHOR";
        agh2[6] = "android.media.metadata.COMPOSER";
        agh = agh2;
        final String[] agj2 = new String[n];
        agj2[0] = "android.media.metadata.DISPLAY_ICON";
        agj2[n3] = "android.media.metadata.ART";
        agj2[n2] = "android.media.metadata.ALBUM_ART";
        agj = agj2;
        final String[] agk2 = new String[n];
        agk2[0] = "android.media.metadata.DISPLAY_ICON_URI";
        agk2[n3] = "android.media.metadata.ART_URI";
        agk2[n2] = "android.media.metadata.ALBUM_ART_URI";
        agk = agk2;
        CREATOR = (Parcelable$Creator)new p();
    }
    
    MediaMetadataCompat(final Parcel parcel) {
        this.agg = parcel.readBundle();
    }
    
    public static MediaMetadataCompat atA(final Object agl) {
        if (agl != null && Build$VERSION.SDK_INT >= 21) {
            final Parcel obtain = Parcel.obtain();
            d.atc(agl, obtain, 0);
            obtain.setDataPosition(0);
            final MediaMetadataCompat mediaMetadataCompat = (MediaMetadataCompat)MediaMetadataCompat.CREATOR.createFromParcel(obtain);
            obtain.recycle();
            mediaMetadataCompat.agl = agl;
            return mediaMetadataCompat;
        }
        return null;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeBundle(this.agg);
    }
}
