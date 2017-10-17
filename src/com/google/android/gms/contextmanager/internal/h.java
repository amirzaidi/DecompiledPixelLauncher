// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class h implements Parcelable$Creator
{
    static void NL(final QueryFilterParameters queryFilterParameters, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, queryFilterParameters.NE());
        a.hX(parcel, 2, queryFilterParameters.NC());
        a.hX(parcel, 3, queryFilterParameters.NB());
        a.ib(parcel, 4, queryFilterParameters.ND(), false);
        a.hS(parcel, hm);
    }
    
    public QueryFilterParameters[] NJ(final int n) {
        return new QueryFilterParameters[n];
    }
    
    public QueryFilterParameters NK(final Parcel parcel) {
        int ib = 0;
        final int ix = b.ix(parcel);
        int[] iy = null;
        int ib2 = 0;
        int ib3 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 3: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 4: {
                    iy = b.iy(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new QueryFilterParameters(ib3, ib2, ib, iy);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
