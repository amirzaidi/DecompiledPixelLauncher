// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import java.util.ArrayList;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.contextmanager.Relation;
import com.google.android.gms.contextmanager.ContextData;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void MT(final WriteBatchImpl writeBatchImpl, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, writeBatchImpl.NU());
        a.hO(parcel, 2, writeBatchImpl.NT());
        a.hQ(parcel, 3, writeBatchImpl.NW(), false);
        a.hQ(parcel, 4, writeBatchImpl.NV(), false);
        a.hQ(parcel, 5, writeBatchImpl.NS(), false);
        a.hS(parcel, hm);
    }
    
    public WriteBatchImpl[] MS(final int n) {
        return new WriteBatchImpl[n];
    }
    
    public WriteBatchImpl MU(final Parcel parcel) {
        boolean il = false;
        ArrayList in = null;
        final int ix = com.google.android.gms.common.internal.safeparcel.b.ix(parcel);
        ArrayList in2 = null;
        ArrayList in3 = null;
        int ib = 0;
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
                    il = com.google.android.gms.common.internal.safeparcel.b.iL(parcel, ig);
                    continue;
                }
                case 3: {
                    in3 = com.google.android.gms.common.internal.safeparcel.b.iN(parcel, ig, ContextData.CREATOR);
                    continue;
                }
                case 4: {
                    in2 = com.google.android.gms.common.internal.safeparcel.b.iN(parcel, ig, Relation.CREATOR);
                    continue;
                }
                case 5: {
                    in = com.google.android.gms.common.internal.safeparcel.b.iN(parcel, ig, Relation.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new WriteBatchImpl(ib, il, in3, in2, in);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
