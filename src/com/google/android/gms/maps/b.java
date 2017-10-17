// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void KX(final StreetViewPanoramaOptions streetViewPanoramaOptions, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, streetViewPanoramaOptions.Li());
        a.eW(parcel, 2, (Parcelable)streetViewPanoramaOptions.Lc(), n, false);
        a.fo(parcel, 3, streetViewPanoramaOptions.Lb(), false);
        a.eW(parcel, 4, (Parcelable)streetViewPanoramaOptions.Lf(), n, false);
        a.fi(parcel, 5, streetViewPanoramaOptions.getRadius(), false);
        a.fu(parcel, 6, streetViewPanoramaOptions.Lg());
        a.fu(parcel, 7, streetViewPanoramaOptions.Ld());
        a.fu(parcel, 8, streetViewPanoramaOptions.Lh());
        a.fu(parcel, 9, streetViewPanoramaOptions.Le());
        a.fu(parcel, 10, streetViewPanoramaOptions.La());
        a.fe(parcel, ey);
    }
    
    public StreetViewPanoramaOptions KY(final Parcel parcel) {
        Integer fe = null;
        byte fi = 0;
        final int fj = com.google.android.gms.common.internal.safeparcel.b.fJ(parcel);
        byte fi2 = 0;
        byte fi3 = 0;
        byte fi4 = 0;
        byte fi5 = 0;
        LatLng latLng = null;
        String fq = null;
        StreetViewPanoramaCamera streetViewPanoramaCamera = null;
        int fn = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = com.google.android.gms.common.internal.safeparcel.b.fS(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.ga(fs)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = com.google.android.gms.common.internal.safeparcel.b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    streetViewPanoramaCamera = (StreetViewPanoramaCamera)com.google.android.gms.common.internal.safeparcel.b.fW(parcel, fs, (Parcelable$Creator)StreetViewPanoramaCamera.CREATOR);
                    continue;
                }
                case 3: {
                    fq = com.google.android.gms.common.internal.safeparcel.b.fQ(parcel, fs);
                    continue;
                }
                case 4: {
                    latLng = (LatLng)com.google.android.gms.common.internal.safeparcel.b.fW(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 5: {
                    fe = com.google.android.gms.common.internal.safeparcel.b.fE(parcel, fs);
                    continue;
                }
                case 6: {
                    fi5 = com.google.android.gms.common.internal.safeparcel.b.fI(parcel, fs);
                    continue;
                }
                case 7: {
                    fi4 = com.google.android.gms.common.internal.safeparcel.b.fI(parcel, fs);
                    continue;
                }
                case 8: {
                    fi3 = com.google.android.gms.common.internal.safeparcel.b.fI(parcel, fs);
                    continue;
                }
                case 9: {
                    fi2 = com.google.android.gms.common.internal.safeparcel.b.fI(parcel, fs);
                    continue;
                }
                case 10: {
                    fi = com.google.android.gms.common.internal.safeparcel.b.fI(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new StreetViewPanoramaOptions(fn, streetViewPanoramaCamera, fq, latLng, fe, fi5, fi4, fi3, fi2, fi);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public StreetViewPanoramaOptions[] KZ(final int n) {
        return new StreetViewPanoramaOptions[n];
    }
}
