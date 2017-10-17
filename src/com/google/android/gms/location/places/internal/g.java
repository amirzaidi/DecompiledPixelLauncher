// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class g implements Parcelable$Creator
{
    static void Df(final PlaceLocalization placeLocalization, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fo(parcel, 1, placeLocalization.name, false);
        a.fo(parcel, 2, placeLocalization.yk, false);
        a.fo(parcel, 3, placeLocalization.ym, false);
        a.fo(parcel, 4, placeLocalization.yl, false);
        a.fr(parcel, 5, placeLocalization.yn, false);
        a.fj(parcel, 1000, placeLocalization.yj);
        a.fe(parcel, ey);
    }
    
    public PlaceLocalization Dg(final Parcel parcel) {
        List fr = null;
        final int fj = b.fJ(parcel);
        int fn = 0;
        String fq = null;
        String fq2 = null;
        String fq3 = null;
        String fq4 = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fq4 = b.fQ(parcel, fs);
                    continue;
                }
                case 2: {
                    fq3 = b.fQ(parcel, fs);
                    continue;
                }
                case 3: {
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 4: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 5: {
                    fr = b.fR(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new PlaceLocalization(fn, fq4, fq3, fq2, fq, fr);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public PlaceLocalization[] Dh(final int n) {
        return new PlaceLocalization[n];
    }
}
