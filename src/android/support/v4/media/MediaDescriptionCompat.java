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
    private final CharSequence afY;
    private Object afZ;
    private final Bundle aga;
    private final CharSequence agb;
    private final CharSequence agc;
    private final String agd;
    private final Uri age;
    private final Uri agf;
    private final Bitmap mIcon;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    MediaDescriptionCompat(final Parcel parcel) {
        this.agd = parcel.readString();
        this.agb = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.afY = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.agc = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mIcon = (Bitmap)parcel.readParcelable((ClassLoader)null);
        this.agf = (Uri)parcel.readParcelable((ClassLoader)null);
        this.aga = parcel.readBundle();
        this.age = (Uri)parcel.readParcelable((ClassLoader)null);
    }
    
    MediaDescriptionCompat(final String agd, final CharSequence agb, final CharSequence afY, final CharSequence agc, final Bitmap mIcon, final Uri agf, final Bundle aga, final Uri age) {
        this.agd = agd;
        this.agb = agb;
        this.afY = afY;
        this.agc = agc;
        this.mIcon = mIcon;
        this.agf = agf;
        this.aga = aga;
        this.age = age;
    }
    
    public static MediaDescriptionCompat aty(final Object afZ) {
        Bundle bundle = null;
        if (afZ != null && Build$VERSION.SDK_INT >= 21) {
            final k k = new k();
            k.atv(m.atJ(afZ));
            k.setTitle(m.atB(afZ));
            k.ats(m.atD(afZ));
            k.atu(m.atG(afZ));
            k.atq(m.atE(afZ));
            k.atw(m.atF(afZ));
            final Bundle atC = m.atC(afZ);
            Uri uri;
            if (atC != null) {
                uri = (Uri)atC.getParcelable("android.support.v4.media.description.MEDIA_URI");
            }
            else {
                uri = null;
            }
            if (uri == null) {
                bundle = atC;
            }
            else if (atC.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || atC.size() != 2) {
                atC.remove("android.support.v4.media.description.MEDIA_URI");
                atC.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
                bundle = atC;
            }
            k.att(bundle);
            if (uri == null) {
                if (Build$VERSION.SDK_INT >= 23) {
                    k.atr(q.atL(afZ));
                }
            }
            else {
                k.atr(uri);
            }
            final MediaDescriptionCompat build = k.build();
            build.afZ = afZ;
            return build;
        }
        return null;
    }
    
    public Object atz() {
        final int n = 23;
        if (this.afZ == null && Build$VERSION.SDK_INT >= 21) {
            final Object atm = g.atm();
            g.atg(atm, this.agd);
            g.atn(atm, this.agb);
            g.ato(atm, this.afY);
            g.ath(atm, this.agc);
            g.atj(atm, this.mIcon);
            g.atk(atm, this.agf);
            Bundle aga = this.aga;
            if (Build$VERSION.SDK_INT < n && this.age != null) {
                if (aga == null) {
                    aga = new Bundle();
                    aga.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
                }
                aga.putParcelable("android.support.v4.media.description.MEDIA_URI", (Parcelable)this.age);
            }
            g.ati(atm, aga);
            if (Build$VERSION.SDK_INT >= n) {
                l.atx(atm, this.age);
            }
            return this.afZ = g.atl(atm);
        }
        return this.afZ;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public String toString() {
        return (Object)this.agb + ", " + (Object)this.afY + ", " + (Object)this.agc;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        if (Build$VERSION.SDK_INT >= 21) {
            m.atH(this.atz(), parcel, n);
        }
        else {
            parcel.writeString(this.agd);
            TextUtils.writeToParcel(this.agb, parcel, n);
            TextUtils.writeToParcel(this.afY, parcel, n);
            TextUtils.writeToParcel(this.agc, parcel, n);
            parcel.writeParcelable((Parcelable)this.mIcon, n);
            parcel.writeParcelable((Parcelable)this.agf, n);
            parcel.writeBundle(this.aga);
            parcel.writeParcelable((Parcelable)this.age, n);
        }
    }
}
