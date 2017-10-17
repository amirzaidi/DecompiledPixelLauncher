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
    static void LQ(final StreetViewPanoramaOptions streetViewPanoramaOptions, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, streetViewPanoramaOptions.Mb());
        a.hK(parcel, 2, (Parcelable)streetViewPanoramaOptions.LV(), n, false);
        a.ic(parcel, 3, streetViewPanoramaOptions.LU(), false);
        a.hK(parcel, 4, (Parcelable)streetViewPanoramaOptions.LY(), n, false);
        a.hW(parcel, 5, streetViewPanoramaOptions.getRadius(), false);
        a.ii(parcel, 6, streetViewPanoramaOptions.LZ());
        a.ii(parcel, 7, streetViewPanoramaOptions.LW());
        a.ii(parcel, 8, streetViewPanoramaOptions.Ma());
        a.ii(parcel, 9, streetViewPanoramaOptions.LX());
        a.ii(parcel, 10, streetViewPanoramaOptions.LT());
        a.hS(parcel, hm);
    }
    
    public StreetViewPanoramaOptions LR(final Parcel parcel) {
        Integer is = null;
        byte iw = 0;
        final int ix = com.google.android.gms.common.internal.safeparcel.b.ix(parcel);
        byte iw2 = 0;
        byte iw3 = 0;
        byte iw4 = 0;
        byte iw5 = 0;
        LatLng latLng = null;
        String ie = null;
        StreetViewPanoramaCamera streetViewPanoramaCamera = null;
        int ib = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = com.google.android.gms.common.internal.safeparcel.b.iG(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.iO(ig)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib = com.google.android.gms.common.internal.safeparcel.b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    streetViewPanoramaCamera = (StreetViewPanoramaCamera)com.google.android.gms.common.internal.safeparcel.b.iK(parcel, ig, (Parcelable$Creator)StreetViewPanoramaCamera.CREATOR);
                    continue;
                }
                case 3: {
                    ie = com.google.android.gms.common.internal.safeparcel.b.iE(parcel, ig);
                    continue;
                }
                case 4: {
                    latLng = (LatLng)com.google.android.gms.common.internal.safeparcel.b.iK(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 5: {
                    is = com.google.android.gms.common.internal.safeparcel.b.is(parcel, ig);
                    continue;
                }
                case 6: {
                    iw5 = com.google.android.gms.common.internal.safeparcel.b.iw(parcel, ig);
                    continue;
                }
                case 7: {
                    iw4 = com.google.android.gms.common.internal.safeparcel.b.iw(parcel, ig);
                    continue;
                }
                case 8: {
                    iw3 = com.google.android.gms.common.internal.safeparcel.b.iw(parcel, ig);
                    continue;
                }
                case 9: {
                    iw2 = com.google.android.gms.common.internal.safeparcel.b.iw(parcel, ig);
                    continue;
                }
                case 10: {
                    iw = com.google.android.gms.common.internal.safeparcel.b.iw(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new StreetViewPanoramaOptions(ib, streetViewPanoramaCamera, ie, latLng, is, iw5, iw4, iw3, iw2, iw);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public StreetViewPanoramaOptions[] LS(final int n) {
        return new StreetViewPanoramaOptions[n];
    }
}
