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

public class o implements Parcelable$Creator
{
    static void KL(final StreetViewPanoramaLocation streetViewPanoramaLocation, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, streetViewPanoramaLocation.Ju());
        a.id(parcel, 2, (Parcelable[])streetViewPanoramaLocation.Fm, n, false);
        a.hK(parcel, 3, (Parcelable)streetViewPanoramaLocation.Fo, n, false);
        a.ic(parcel, 4, streetViewPanoramaLocation.Fp, false);
        a.hS(parcel, hm);
    }
    
    public StreetViewPanoramaLocation KM(final Parcel parcel) {
        final int ix = b.ix(parcel);
        LatLng latLng = null;
        StreetViewPanoramaLink[] array = null;
        int ib = 0;
        String ie = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            int n = 0;
            StreetViewPanoramaLink[] array3 = null;
            String s = null;
            LatLng latLng3 = null;
            Label_0128: {
                switch (b.iO(ig)) {
                    default: {
                        b.io(parcel, ig);
                        break;
                    }
                    case 1: {
                        ib = b.iB(parcel, ig);
                        break;
                    }
                    case 2: {
                        final StreetViewPanoramaLink[] array2 = (StreetViewPanoramaLink[])b.iA(parcel, ig, (Parcelable$Creator)StreetViewPanoramaLink.CREATOR);
                        n = ib;
                        final LatLng latLng2 = latLng;
                        array3 = array2;
                        s = ie;
                        latLng3 = latLng2;
                        break Label_0128;
                    }
                    case 3: {
                        final LatLng latLng4 = (LatLng)b.iK(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                        array3 = array;
                        n = ib;
                        final String s2 = ie;
                        latLng3 = latLng4;
                        s = s2;
                        break Label_0128;
                    }
                    case 4: {
                        ie = b.iE(parcel, ig);
                        break;
                    }
                }
                s = ie;
                latLng3 = latLng;
                array3 = array;
                n = ib;
            }
            ib = n;
            array = array3;
            latLng = latLng3;
            ie = s;
        }
        if (parcel.dataPosition() == ix) {
            return new StreetViewPanoramaLocation(ib, array, latLng, ie);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public StreetViewPanoramaLocation[] KN(final int n) {
        return new StreetViewPanoramaLocation[n];
    }
}
