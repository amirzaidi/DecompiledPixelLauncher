// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import java.util.ArrayList;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class l implements Parcelable$Creator
{
    static void On(final RelationFilterImpl relationFilterImpl, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, relationFilterImpl.Oj());
        a.hQ(parcel, 2, relationFilterImpl.Ok(), false);
        a.hK(parcel, 3, (Parcelable)relationFilterImpl.Oi(), n, false);
        a.hS(parcel, hm);
    }
    
    public RelationFilterImpl[] Ol(final int n) {
        return new RelationFilterImpl[n];
    }
    
    public RelationFilterImpl Om(final Parcel parcel) {
        QueryFilterParameters queryFilterParameters = null;
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
                    in = b.iN(parcel, ig, RelationFilterImpl$Inclusion.CREATOR);
                    continue;
                }
                case 3: {
                    queryFilterParameters = (QueryFilterParameters)b.iK(parcel, ig, QueryFilterParameters.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new RelationFilterImpl(ib, in, queryFilterParameters);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
