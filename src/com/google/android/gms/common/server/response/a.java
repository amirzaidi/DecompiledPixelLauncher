// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void kw(final FieldMappingDictionary$FieldMapPair fieldMappingDictionary$FieldMapPair, final Parcel parcel, final int n) {
        final int ey = com.google.android.gms.common.internal.safeparcel.a.eY(parcel);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 1, fieldMappingDictionary$FieldMapPair.hC);
        com.google.android.gms.common.internal.safeparcel.a.fo(parcel, 2, fieldMappingDictionary$FieldMapPair.hE, false);
        com.google.android.gms.common.internal.safeparcel.a.eW(parcel, 3, (Parcelable)fieldMappingDictionary$FieldMapPair.hD, n, false);
        com.google.android.gms.common.internal.safeparcel.a.fe(parcel, ey);
    }
    
    public FieldMappingDictionary$FieldMapPair createFromParcel(final Parcel parcel) {
        FastJsonResponse$Field fastJsonResponse$Field = null;
        final int fj = b.fJ(parcel);
        int fn = 0;
        String fq = null;
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
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 3: {
                    fastJsonResponse$Field = (FastJsonResponse$Field)b.fW(parcel, fs, (Parcelable$Creator)FastJsonResponse$Field.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new FieldMappingDictionary$FieldMapPair(fn, fq, fastJsonResponse$Field);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public FieldMappingDictionary$FieldMapPair[] newArray(final int n) {
        return new FieldMappingDictionary$FieldMapPair[n];
    }
}
