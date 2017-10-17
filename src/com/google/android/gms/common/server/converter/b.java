// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.converter;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void lt(final ConverterWrapper converterWrapper, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, converterWrapper.lq());
        a.eW(parcel, 2, (Parcelable)converterWrapper.lo(), n, false);
        a.fe(parcel, ey);
    }
    
    public ConverterWrapper ls(final Parcel parcel) {
        final int fj = com.google.android.gms.common.internal.safeparcel.b.fJ(parcel);
        int fn = 0;
        StringToIntConverter stringToIntConverter = null;
        while (parcel.dataPosition() < fj) {
            final int fs = com.google.android.gms.common.internal.safeparcel.b.fS(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.ga(fs)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = com.google.android.gms.common.internal.safeparcel.b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    stringToIntConverter = (StringToIntConverter)com.google.android.gms.common.internal.safeparcel.b.fW(parcel, fs, (Parcelable$Creator)StringToIntConverter.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new ConverterWrapper(fn, stringToIntConverter);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public ConverterWrapper[] lu(final int n) {
        return new ConverterWrapper[n];
    }
}
