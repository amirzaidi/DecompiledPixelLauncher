// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class l implements Parcelable$Creator
{
    static void EQ(final PlaceReport placeReport, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, placeReport.An);
        a.fo(parcel, 2, placeReport.EM(), false);
        a.fo(parcel, 3, placeReport.getTag(), false);
        a.fo(parcel, 4, placeReport.EN(), false);
        a.fe(parcel, ey);
    }
    
    public PlaceReport[] EO(final int n) {
        return new PlaceReport[n];
    }
    
    public PlaceReport EP(final Parcel parcel) {
        String fq = null;
        final int fj = b.fJ(parcel);
        String fq2 = null;
        int fn = 0;
        String fq3 = null;
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
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 3: {
                    fq3 = b.fQ(parcel, fs);
                    continue;
                }
                case 4: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new PlaceReport(fn, fq2, fq3, fq);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
