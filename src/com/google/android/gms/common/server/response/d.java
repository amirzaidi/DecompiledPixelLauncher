// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.response;

import java.util.ArrayList;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class d implements Parcelable$Creator
{
    static void kO(final FieldMappingDictionary$Entry fieldMappingDictionary$Entry, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, fieldMappingDictionary$Entry.hQ);
        a.fo(parcel, 2, fieldMappingDictionary$Entry.hR, false);
        a.fc(parcel, 3, fieldMappingDictionary$Entry.hS, false);
        a.fe(parcel, ey);
    }
    
    public FieldMappingDictionary$Entry createFromParcel(final Parcel parcel) {
        ArrayList fz = null;
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
                    fz = b.fZ(parcel, fs, (Parcelable$Creator)FieldMappingDictionary$FieldMapPair.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new FieldMappingDictionary$Entry(fn, fq, fz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public FieldMappingDictionary$Entry[] newArray(final int n) {
        return new FieldMappingDictionary$Entry[n];
    }
}
