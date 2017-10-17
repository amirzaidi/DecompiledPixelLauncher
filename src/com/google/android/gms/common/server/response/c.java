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

public class c implements Parcelable$Creator
{
    static void kN(final FieldMappingDictionary fieldMappingDictionary, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, fieldMappingDictionary.kT());
        a.fc(parcel, 2, fieldMappingDictionary.kU(), false);
        a.fo(parcel, 3, fieldMappingDictionary.kW(), false);
        a.fe(parcel, ey);
    }
    
    public FieldMappingDictionary createFromParcel(final Parcel parcel) {
        String fq = null;
        final int fj = b.fJ(parcel);
        int fn = 0;
        ArrayList fz = null;
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
                    fz = b.fZ(parcel, fs, (Parcelable$Creator)FieldMappingDictionary$Entry.CREATOR);
                    continue;
                }
                case 3: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new FieldMappingDictionary(fn, fz, fq);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public FieldMappingDictionary[] newArray(final int n) {
        return new FieldMappingDictionary[n];
    }
}
