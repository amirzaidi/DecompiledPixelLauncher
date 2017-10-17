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

public class h implements Parcelable$Creator
{
    static void Ev(final AutocompletePredictionEntity autocompletePredictionEntity, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.ic(parcel, 1, autocompletePredictionEntity.zE, false);
        a.ic(parcel, 2, autocompletePredictionEntity.zH, false);
        a.hP(parcel, 3, autocompletePredictionEntity.zB, false);
        a.hQ(parcel, 4, autocompletePredictionEntity.zJ, false);
        a.hX(parcel, 5, autocompletePredictionEntity.zD);
        a.ic(parcel, 6, autocompletePredictionEntity.zA, false);
        a.hQ(parcel, 7, autocompletePredictionEntity.zI, false);
        a.hX(parcel, 1000, autocompletePredictionEntity.zG);
        a.ic(parcel, 8, autocompletePredictionEntity.zF, false);
        a.hQ(parcel, 9, autocompletePredictionEntity.zC, false);
        a.hS(parcel, hm);
    }
    
    public AutocompletePredictionEntity Et(final Parcel parcel) {
        int ib = 0;
        List in = null;
        final int ix = b.ix(parcel);
        String ie = null;
        List in2 = null;
        String ie2 = null;
        List in3 = null;
        String ie3 = null;
        List iv = null;
        String ie4 = null;
        int ib2 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ie3 = b.iE(parcel, ig);
                    continue;
                }
                case 2: {
                    ie4 = b.iE(parcel, ig);
                    continue;
                }
                case 3: {
                    iv = b.iv(parcel, ig);
                    continue;
                }
                case 4: {
                    in3 = b.iN(parcel, ig, AutocompletePredictionEntity$SubstringEntity.CREATOR);
                    continue;
                }
                case 5: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 6: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 7: {
                    in2 = b.iN(parcel, ig, AutocompletePredictionEntity$SubstringEntity.CREATOR);
                    continue;
                }
                case 1000: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 8: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 9: {
                    in = b.iN(parcel, ig, AutocompletePredictionEntity$SubstringEntity.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new AutocompletePredictionEntity(ib2, ie4, iv, ib, ie3, in3, ie2, in2, ie, in);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public AutocompletePredictionEntity[] Eu(final int n) {
        return new AutocompletePredictionEntity[n];
    }
}
