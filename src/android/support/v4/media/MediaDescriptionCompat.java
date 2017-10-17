// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.os.Build$VERSION;
import android.text.TextUtils;
import android.os.Parcel;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public final class MediaDescriptionCompat implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    private final CharSequence aeW;
    private Object aeX;
    private final Bundle aeY;
    private final CharSequence aeZ;
    private final CharSequence afa;
    private final String afb;
    private final Uri afc;
    private final Uri afd;
    private final Bitmap mIcon;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    MediaDescriptionCompat(final Parcel parcel) {
        this.afb = parcel.readString();
        this.aeZ = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.aeW = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.afa = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mIcon = (Bitmap)parcel.readParcelable((ClassLoader)null);
        this.afd = (Uri)parcel.readParcelable((ClassLoader)null);
        this.aeY = parcel.readBundle();
        this.afc = (Uri)parcel.readParcelable((ClassLoader)null);
    }
    
    MediaDescriptionCompat(final String afb, final CharSequence aeZ, final CharSequence aeW, final CharSequence afa, final Bitmap mIcon, final Uri afd, final Bundle aeY, final Uri afc) {
        this.afb = afb;
        this.aeZ = aeZ;
        this.aeW = aeW;
        this.afa = afa;
        this.mIcon = mIcon;
        this.afd = afd;
        this.aeY = aeY;
        this.afc = afc;
    }
    
    public static MediaDescriptionCompat asB(final Object aeX) {
        Bundle bundle = null;
        if (aeX != null && Build$VERSION.SDK_INT >= 21) {
            final k k = new k();
            k.asy(m.asM(aeX));
            k.setTitle(m.asE(aeX));
            k.asv(m.asG(aeX));
            k.asx(m.asJ(aeX));
            k.ast(m.asH(aeX));
            k.asz(m.asI(aeX));
            final Bundle f = m.asF(aeX);
            Uri uri;
            if (f != null) {
                uri = (Uri)f.getParcelable("android.support.v4.media.description.MEDIA_URI");
            }
            else {
                uri = null;
            }
            if (uri == null) {
                bundle = f;
            }
            else if (f.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || f.size() != 2) {
                f.remove("android.support.v4.media.description.MEDIA_URI");
                f.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
                bundle = f;
            }
            k.asw(bundle);
            if (uri == null) {
                if (Build$VERSION.SDK_INT >= 23) {
                    k.asu(q.asO(aeX));
                }
            }
            else {
                k.asu(uri);
            }
            final MediaDescriptionCompat build = k.build();
            build.aeX = aeX;
            return build;
        }
        return null;
    }
    
    public Object asC() {
        final int n = 23;
        if (this.aeX == null && Build$VERSION.SDK_INT >= 21) {
            final Object asp = g.asp();
            g.asj(asp, this.afb);
            g.asq(asp, this.aeZ);
            g.asr(asp, this.aeW);
            g.ask(asp, this.afa);
            g.asm(asp, this.mIcon);
            g.asn(asp, this.afd);
            Bundle aeY = this.aeY;
            if (Build$VERSION.SDK_INT < n && this.afc != null) {
                if (aeY == null) {
                    aeY = new Bundle();
                    aeY.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
                }
                aeY.putParcelable("android.support.v4.media.description.MEDIA_URI", (Parcelable)this.afc);
            }
            g.asl(asp, aeY);
            if (Build$VERSION.SDK_INT >= n) {
                l.asA(asp, this.afc);
            }
            return this.aeX = g.aso(asp);
        }
        return this.aeX;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public String toString() {
        return (Object)this.aeZ + ", " + (Object)this.aeW + ", " + (Object)this.afa;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        if (Build$VERSION.SDK_INT >= 21) {
            m.asK(this.asC(), parcel, n);
        }
        else {
            parcel.writeString(this.afb);
            TextUtils.writeToParcel(this.aeZ, parcel, n);
            TextUtils.writeToParcel(this.aeW, parcel, n);
            TextUtils.writeToParcel(this.afa, parcel, n);
            parcel.writeParcelable((Parcelable)this.mIcon, n);
            parcel.writeParcelable((Parcelable)this.afd, n);
            parcel.writeBundle(this.aeY);
            parcel.writeParcelable((Parcelable)this.afc, n);
        }
    }
}
