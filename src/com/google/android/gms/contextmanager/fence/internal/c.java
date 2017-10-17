// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class c implements Parcelable$Creator
{
    static void OF(final FenceQueryRequestImpl fenceQueryRequestImpl, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, fenceQueryRequestImpl.OY());
        a.hK(parcel, 2, (Parcelable)fenceQueryRequestImpl.OX(), n, false);
        a.hS(parcel, hm);
    }
    
    public FenceQueryRequestImpl OD(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        FenceQueryRequestImpl$QueryFenceOperation fenceQueryRequestImpl$QueryFenceOperation = null;
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
                    fenceQueryRequestImpl$QueryFenceOperation = (FenceQueryRequestImpl$QueryFenceOperation)b.iK(parcel, ig, FenceQueryRequestImpl$QueryFenceOperation.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new FenceQueryRequestImpl(ib, fenceQueryRequestImpl$QueryFenceOperation);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public FenceQueryRequestImpl[] OE(final int n) {
        return new FenceQueryRequestImpl[n];
    }
}
