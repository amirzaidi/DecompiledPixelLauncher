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
    static void DI(final AutocompletePredictionEntity$SubstringEntity autocompletePredictionEntity$SubstringEntity, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, autocompletePredictionEntity$SubstringEntity.mOffset);
        a.fj(parcel, 2, autocompletePredictionEntity$SubstringEntity.yp);
        a.fj(parcel, 1000, autocompletePredictionEntity$SubstringEntity.yo);
        a.fe(parcel, ey);
    }
    
    public AutocompletePredictionEntity$SubstringEntity DG(final Parcel parcel) {
        int fn = 0;
        final int fj = b.fJ(parcel);
        int fn2 = 0;
        int fn3 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new AutocompletePredictionEntity$SubstringEntity(fn3, fn2, fn);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public AutocompletePredictionEntity$SubstringEntity[] DH(final int n) {
        return new AutocompletePredictionEntity$SubstringEntity[n];
    }
}
