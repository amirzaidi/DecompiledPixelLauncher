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
    static void nB(final FieldMappingDictionary fieldMappingDictionary, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, fieldMappingDictionary.nG());
        a.hQ(parcel, 2, fieldMappingDictionary.nH(), false);
        a.ic(parcel, 3, fieldMappingDictionary.nJ(), false);
        a.hS(parcel, hm);
    }
    
    public FieldMappingDictionary createFromParcel(final Parcel parcel) {
        String ie = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        ArrayList in = null;
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
                    in = b.iN(parcel, ig, (Parcelable$Creator)FieldMappingDictionary$Entry.CREATOR);
                    continue;
                }
                case 3: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new FieldMappingDictionary(ib, in, ie);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public FieldMappingDictionary[] newArray(final int n) {
        return new FieldMappingDictionary[n];
    }
}
