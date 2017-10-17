// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class j implements Parcelable$Creator
{
    static void EB(final AutocompletePredictionEntity$SubstringEntity autocompletePredictionEntity$SubstringEntity, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, autocompletePredictionEntity$SubstringEntity.mOffset);
        a.hX(parcel, 2, autocompletePredictionEntity$SubstringEntity.zU);
        a.hX(parcel, 1000, autocompletePredictionEntity$SubstringEntity.zT);
        a.hS(parcel, hm);
    }
    
    public AutocompletePredictionEntity$SubstringEntity[] EA(final int n) {
        return new AutocompletePredictionEntity$SubstringEntity[n];
    }
    
    public AutocompletePredictionEntity$SubstringEntity Ez(final Parcel parcel) {
        int ib = 0;
        final int ix = b.ix(parcel);
        int ib2 = 0;
        int ib3 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new AutocompletePredictionEntity$SubstringEntity(ib3, ib2, ib);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
