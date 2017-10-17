// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void Iw(final StreetViewPanoramaCamera streetViewPanoramaCamera, final Parcel parcel, final int n) {
        final int ey = com.google.android.gms.common.internal.safeparcel.a.eY(parcel);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 1, streetViewPanoramaCamera.Jh());
        com.google.android.gms.common.internal.safeparcel.a.fs(parcel, 2, streetViewPanoramaCamera.Ej);
        com.google.android.gms.common.internal.safeparcel.a.fs(parcel, 3, streetViewPanoramaCamera.Eg);
        com.google.android.gms.common.internal.safeparcel.a.fs(parcel, 4, streetViewPanoramaCamera.Ek);
        com.google.android.gms.common.internal.safeparcel.a.fe(parcel, ey);
    }
    
    public StreetViewPanoramaCamera Ix(final Parcel parcel) {
        float gj = 0.0f;
        final int fj = b.fJ(parcel);
        float gj2 = 0.0f;
        int fn = 0;
        float gj3 = 0.0f;
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
                    gj3 = b.gj(parcel, fs);
                    continue;
                }
                case 4: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new StreetViewPanoramaCamera(fn, gj2, gj3, gj);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public StreetViewPanoramaCamera[] Iy(final int n) {
        return new StreetViewPanoramaCamera[n];
    }
}
