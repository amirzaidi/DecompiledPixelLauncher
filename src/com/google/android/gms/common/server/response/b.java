// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void nA(final SafeParcelResponse safeParcelResponse, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, safeParcelResponse.nq());
        a.hV(parcel, 2, safeParcelResponse.ns(), false);
        a.hK(parcel, 3, (Parcelable)safeParcelResponse.no(), n, false);
        a.hS(parcel, hm);
    }
    
    public SafeParcelResponse ny(final Parcel parcel) {
        FieldMappingDictionary fieldMappingDictionary = null;
        final int ix = com.google.android.gms.common.internal.safeparcel.b.ix(parcel);
        int ib = 0;
        Parcel il = null;
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
                    il = com.google.android.gms.common.internal.safeparcel.b.il(parcel, ig);
                    continue;
                }
                case 3: {
                    fieldMappingDictionary = (FieldMappingDictionary)com.google.android.gms.common.internal.safeparcel.b.iK(parcel, ig, (Parcelable$Creator)FieldMappingDictionary.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new SafeParcelResponse(ib, il, fieldMappingDictionary);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public SafeParcelResponse[] nz(final int n) {
        return new SafeParcelResponse[n];
    }
}
