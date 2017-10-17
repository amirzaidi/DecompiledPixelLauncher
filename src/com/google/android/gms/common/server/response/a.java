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
    static void nk(final FieldMappingDictionary$FieldMapPair fieldMappingDictionary$FieldMapPair, final Parcel parcel, final int n) {
        final int hm = com.google.android.gms.common.internal.safeparcel.a.hM(parcel);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 1, fieldMappingDictionary$FieldMapPair.ku);
        com.google.android.gms.common.internal.safeparcel.a.ic(parcel, 2, fieldMappingDictionary$FieldMapPair.kw, false);
        com.google.android.gms.common.internal.safeparcel.a.hK(parcel, 3, (Parcelable)fieldMappingDictionary$FieldMapPair.kv, n, false);
        com.google.android.gms.common.internal.safeparcel.a.hS(parcel, hm);
    }
    
    public FieldMappingDictionary$FieldMapPair createFromParcel(final Parcel parcel) {
        FastJsonResponse$Field fastJsonResponse$Field = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        String ie = null;
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
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 3: {
                    fastJsonResponse$Field = (FastJsonResponse$Field)b.iK(parcel, ig, (Parcelable$Creator)FastJsonResponse$Field.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new FieldMappingDictionary$FieldMapPair(ib, ie, fastJsonResponse$Field);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public FieldMappingDictionary$FieldMapPair[] newArray(final int n) {
        return new FieldMappingDictionary$FieldMapPair[n];
    }
}
