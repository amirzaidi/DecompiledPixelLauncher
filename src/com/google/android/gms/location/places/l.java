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
    static void FJ(final PlaceReport placeReport, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, placeReport.BS);
        a.ic(parcel, 2, placeReport.FF(), false);
        a.ic(parcel, 3, placeReport.getTag(), false);
        a.ic(parcel, 4, placeReport.FG(), false);
        a.hS(parcel, hm);
    }
    
    public PlaceReport[] FH(final int n) {
        return new PlaceReport[n];
    }
    
    public PlaceReport FI(final Parcel parcel) {
        String ie = null;
        final int ix = b.ix(parcel);
        String ie2 = null;
        int ib = 0;
        String ie3 = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 3: {
                    ie3 = b.iE(parcel, ig);
                    continue;
                }
                case 4: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new PlaceReport(ib, ie2, ie3, ie);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
