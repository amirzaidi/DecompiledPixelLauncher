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
    static void oh(final ConverterWrapper converterWrapper, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, converterWrapper.oe());
        a.hK(parcel, 2, (Parcelable)converterWrapper.oc(), n, false);
        a.hS(parcel, hm);
    }
    
    public ConverterWrapper og(final Parcel parcel) {
        final int ix = com.google.android.gms.common.internal.safeparcel.b.ix(parcel);
        int ib = 0;
        StringToIntConverter stringToIntConverter = null;
        while (parcel.dataPosition() < ix) {
            final int ig = com.google.android.gms.common.internal.safeparcel.b.iG(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.iO(ig)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib = com.google.android.gms.common.internal.safeparcel.b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    stringToIntConverter = (StringToIntConverter)com.google.android.gms.common.internal.safeparcel.b.iK(parcel, ig, (Parcelable$Creator)StringToIntConverter.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new ConverterWrapper(ib, stringToIntConverter);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public ConverterWrapper[] oi(final int n) {
        return new ConverterWrapper[n];
    }
}
