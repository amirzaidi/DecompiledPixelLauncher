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
    static void nC(final FieldMappingDictionary$Entry fieldMappingDictionary$Entry, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, fieldMappingDictionary$Entry.kI);
        a.ic(parcel, 2, fieldMappingDictionary$Entry.kJ, false);
        a.hQ(parcel, 3, fieldMappingDictionary$Entry.kK, false);
        a.hS(parcel, hm);
    }
    
    public FieldMappingDictionary$Entry createFromParcel(final Parcel parcel) {
        ArrayList in = null;
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
                    in = b.iN(parcel, ig, (Parcelable$Creator)FieldMappingDictionary$FieldMapPair.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new FieldMappingDictionary$Entry(ib, ie, in);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public FieldMappingDictionary$Entry[] newArray(final int n) {
        return new FieldMappingDictionary$Entry[n];
    }
}
