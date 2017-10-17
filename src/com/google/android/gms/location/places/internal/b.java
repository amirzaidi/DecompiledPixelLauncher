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
    static void DP(final PlacesParams placesParams, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.ic(parcel, 1, placesParams.AK, false);
        a.ic(parcel, 2, placesParams.AJ, false);
        a.ic(parcel, 3, placesParams.AG, false);
        a.ic(parcel, 4, placesParams.AI, false);
        a.hX(parcel, 6, placesParams.AF);
        a.hX(parcel, 7, placesParams.AE);
        a.hX(parcel, 1000, placesParams.AD);
        a.hS(parcel, hm);
    }
    
    public PlacesParams DQ(final Parcel parcel) {
        int ib = 0;
        String ie = null;
        final int ix = com.google.android.gms.common.internal.safeparcel.b.ix(parcel);
        int ib2 = 0;
        String ie2 = null;
        String ie3 = null;
        String ie4 = null;
        int ib3 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = com.google.android.gms.common.internal.safeparcel.b.iG(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.iO(ig)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ie4 = com.google.android.gms.common.internal.safeparcel.b.iE(parcel, ig);
                    continue;
                }
                case 2: {
                    ie3 = com.google.android.gms.common.internal.safeparcel.b.iE(parcel, ig);
                    continue;
                }
                case 3: {
                    ie2 = com.google.android.gms.common.internal.safeparcel.b.iE(parcel, ig);
                    continue;
                }
                case 4: {
                    ie = com.google.android.gms.common.internal.safeparcel.b.iE(parcel, ig);
                    continue;
                }
                case 6: {
                    ib2 = com.google.android.gms.common.internal.safeparcel.b.iB(parcel, ig);
                    continue;
                }
                case 7: {
                    ib = com.google.android.gms.common.internal.safeparcel.b.iB(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib3 = com.google.android.gms.common.internal.safeparcel.b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new PlacesParams(ib3, ie4, ie3, ie2, ie, ib2, ib);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public PlacesParams[] DR(final int n) {
        return new PlacesParams[n];
    }
}
