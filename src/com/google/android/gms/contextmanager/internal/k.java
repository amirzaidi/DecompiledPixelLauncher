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

public class k implements Parcelable$Creator
{
    static void NX(final ContextDataFilterImpl contextDataFilterImpl, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, contextDataFilterImpl.Nl());
        a.hQ(parcel, 2, contextDataFilterImpl.Nm(), false);
        a.if(parcel, 3, contextDataFilterImpl.Nk(), false);
        a.hK(parcel, 4, (Parcelable)contextDataFilterImpl.Nj(), n, false);
        a.hS(parcel, hm);
    }
    
    public ContextDataFilterImpl NY(final Parcel parcel) {
        QueryFilterParameters queryFilterParameters = null;
        final int ix = b.ix(parcel);
        ArrayList in = null;
        int ib = 0;
        ArrayList if1 = null;
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
                    in = b.iN(parcel, ig, ContextDataFilterImpl$Inclusion.CREATOR);
                    continue;
                }
                case 3: {
                    if1 = b.iF(parcel, ig);
                    continue;
                }
                case 4: {
                    queryFilterParameters = (QueryFilterParameters)b.iK(parcel, ig, QueryFilterParameters.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new ContextDataFilterImpl(ib, in, if1, queryFilterParameters);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public ContextDataFilterImpl[] NZ(final int n) {
        return new ContextDataFilterImpl[n];
    }
}
