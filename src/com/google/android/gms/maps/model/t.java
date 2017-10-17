// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class t implements Parcelable$Creator
{
    static void KA(final StreetViewPanoramaOrientation streetViewPanoramaOrientation, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, streetViewPanoramaOrientation.Iv());
        a.fs(parcel, 2, streetViewPanoramaOrientation.DC);
        a.fs(parcel, 3, streetViewPanoramaOrientation.DE);
        a.fe(parcel, ey);
    }
    
    public StreetViewPanoramaOrientation Ky(final Parcel parcel) {
        float gj = 0.0f;
        final int fj = b.fJ(parcel);
        int fn = 0;
        float gj2 = 0.0f;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    gj2 = b.gj(parcel, fs);
                    continue;
                }
                case 3: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new StreetViewPanoramaOrientation(fn, gj2, gj);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public StreetViewPanoramaOrientation[] Kz(final int n) {
        return new StreetViewPanoramaOrientation[n];
    }
}
