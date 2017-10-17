// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class g implements Parcelable$Creator
{
    static void OR(final FenceStateImpl fenceStateImpl, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, fenceStateImpl.Ps());
        a.hX(parcel, 2, fenceStateImpl.Pt());
        a.ik(parcel, 3, fenceStateImpl.Pr());
        a.ic(parcel, 4, fenceStateImpl.Pu(), false);
        a.hX(parcel, 5, fenceStateImpl.Pq());
        a.hS(parcel, hm);
    }
    
    public FenceStateImpl OS(final Parcel parcel) {
        int ib = 0;
        final int ix = b.ix(parcel);
        long iz = 0L;
        String ie = null;
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
                    iz = b.iz(parcel, ig);
                    continue;
                }
                case 4: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 5: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new FenceStateImpl(ib3, ib2, iz, ie, ib);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public FenceStateImpl[] OT(final int n) {
        return new FenceStateImpl[n];
    }
}
