// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class n implements Parcelable$Creator
{
    static void JS(final StreetViewPanoramaLocation streetViewPanoramaLocation, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, streetViewPanoramaLocation.IB());
        a.fp(parcel, 2, (Parcelable[])streetViewPanoramaLocation.DH, n, false);
        a.eW(parcel, 3, (Parcelable)streetViewPanoramaLocation.DJ, n, false);
        a.fo(parcel, 4, streetViewPanoramaLocation.DK, false);
        a.fe(parcel, ey);
    }
    
    public StreetViewPanoramaLocation JT(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        LatLng latLng = null;
        StreetViewPanoramaLink[] array = null;
        int fn = 0;
        String fq = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            int n = 0;
            StreetViewPanoramaLink[] array3 = null;
            String s = null;
            LatLng latLng3 = null;
            Label_0128: {
                switch (b.ga(fs)) {
                    default: {
                        b.fA(parcel, fs);
                        break;
                    }
                    case 1: {
                        fn = b.fN(parcel, fs);
                        break;
                    }
                    case 2: {
                        final StreetViewPanoramaLink[] array2 = (StreetViewPanoramaLink[])b.fM(parcel, fs, (Parcelable$Creator)StreetViewPanoramaLink.CREATOR);
                        n = fn;
                        final LatLng latLng2 = latLng;
                        array3 = array2;
                        s = fq;
                        latLng3 = latLng2;
                        break Label_0128;
                    }
                    case 3: {
                        final LatLng latLng4 = (LatLng)b.fW(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                        array3 = array;
                        n = fn;
                        final String s2 = fq;
                        latLng3 = latLng4;
                        s = s2;
                        break Label_0128;
                    }
                    case 4: {
                        fq = b.fQ(parcel, fs);
                        break;
                    }
                }
                s = fq;
                latLng3 = latLng;
                array3 = array;
                n = fn;
            }
            fn = n;
            array = array3;
            latLng = latLng3;
            fq = s;
        }
        if (parcel.dataPosition() == fj) {
            return new StreetViewPanoramaLocation(fn, array, latLng, fq);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public StreetViewPanoramaLocation[] JU(final int n) {
        return new StreetViewPanoramaLocation[n];
    }
}
