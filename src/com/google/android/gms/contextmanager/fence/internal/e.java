// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class e implements Parcelable$Creator
{
    static void OL(final FenceQueryRequestImpl$QueryFenceOperation fenceQueryRequestImpl$QueryFenceOperation, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, fenceQueryRequestImpl$QueryFenceOperation.Py());
        a.hX(parcel, 2, fenceQueryRequestImpl$QueryFenceOperation.Px());
        a.if(parcel, 3, fenceQueryRequestImpl$QueryFenceOperation.Pw(), false);
        a.hS(parcel, hm);
    }
    
    public FenceQueryRequestImpl$QueryFenceOperation OM(final Parcel parcel) {
        int ib = 0;
        final int ix = b.ix(parcel);
        List if1 = null;
        int ib2 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 3: {
                    if1 = b.iF(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new FenceQueryRequestImpl$QueryFenceOperation(ib2, ib, if1);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public FenceQueryRequestImpl$QueryFenceOperation[] ON(final int n) {
        return new FenceQueryRequestImpl$QueryFenceOperation[n];
    }
}
