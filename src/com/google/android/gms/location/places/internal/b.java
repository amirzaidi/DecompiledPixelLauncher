// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void CW(final PlacesParams placesParams, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fo(parcel, 1, placesParams.zf, false);
        a.fo(parcel, 2, placesParams.ze, false);
        a.fo(parcel, 3, placesParams.zb, false);
        a.fo(parcel, 4, placesParams.zd, false);
        a.fj(parcel, 6, placesParams.za);
        a.fj(parcel, 7, placesParams.yZ);
        a.fj(parcel, 1000, placesParams.yY);
        a.fe(parcel, ey);
    }
    
    public PlacesParams CX(final Parcel parcel) {
        int fn = 0;
        String fq = null;
        final int fj = com.google.android.gms.common.internal.safeparcel.b.fJ(parcel);
        int fn2 = 0;
        String fq2 = null;
        String fq3 = null;
        String fq4 = null;
        int fn3 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = com.google.android.gms.common.internal.safeparcel.b.fS(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.ga(fs)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fq4 = com.google.android.gms.common.internal.safeparcel.b.fQ(parcel, fs);
                    continue;
                }
                case 2: {
                    fq3 = com.google.android.gms.common.internal.safeparcel.b.fQ(parcel, fs);
                    continue;
                }
                case 3: {
                    fq2 = com.google.android.gms.common.internal.safeparcel.b.fQ(parcel, fs);
                    continue;
                }
                case 4: {
                    fq = com.google.android.gms.common.internal.safeparcel.b.fQ(parcel, fs);
                    continue;
                }
                case 6: {
                    fn2 = com.google.android.gms.common.internal.safeparcel.b.fN(parcel, fs);
                    continue;
                }
                case 7: {
                    fn = com.google.android.gms.common.internal.safeparcel.b.fN(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn3 = com.google.android.gms.common.internal.safeparcel.b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new PlacesParams(fn3, fq4, fq3, fq2, fq, fn2, fn);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public PlacesParams[] CY(final int n) {
        return new PlacesParams[n];
    }
}
