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
    static void kM(final SafeParcelResponse safeParcelResponse, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, safeParcelResponse.kC());
        a.fh(parcel, 2, safeParcelResponse.kE(), false);
        a.eW(parcel, 3, (Parcelable)safeParcelResponse.kA(), n, false);
        a.fe(parcel, ey);
    }
    
    public SafeParcelResponse kK(final Parcel parcel) {
        FieldMappingDictionary fieldMappingDictionary = null;
        final int fj = com.google.android.gms.common.internal.safeparcel.b.fJ(parcel);
        int fn = 0;
        Parcel fx = null;
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
                    fx = com.google.android.gms.common.internal.safeparcel.b.fx(parcel, fs);
                    continue;
                }
                case 3: {
                    fieldMappingDictionary = (FieldMappingDictionary)com.google.android.gms.common.internal.safeparcel.b.fW(parcel, fs, (Parcelable$Creator)FieldMappingDictionary.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new SafeParcelResponse(fn, fx, fieldMappingDictionary);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public SafeParcelResponse[] kL(final int n) {
        return new SafeParcelResponse[n];
    }
}
