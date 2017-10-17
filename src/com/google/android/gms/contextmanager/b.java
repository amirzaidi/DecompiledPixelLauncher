// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void PQ(final Relation relation, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, relation.PL());
        a.ij(parcel, 2, relation.PJ(), false);
        a.hS(parcel, hm);
    }
    
    public Relation[] PP(final int n) {
        return new Relation[n];
    }
    
    public Relation PR(final Parcel parcel) {
        final int ix = com.google.android.gms.common.internal.safeparcel.b.ix(parcel);
        int ib = 0;
        byte[] it = null;
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
                    it = com.google.android.gms.common.internal.safeparcel.b.iT(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new Relation(ib, it);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
