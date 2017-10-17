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
    static void NM(final FenceQueryRequestImpl fenceQueryRequestImpl, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, fenceQueryRequestImpl.Of());
        a.eW(parcel, 2, (Parcelable)fenceQueryRequestImpl.Oe(), n, false);
        a.fe(parcel, ey);
    }
    
    public FenceQueryRequestImpl NK(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        FenceQueryRequestImpl$QueryFenceOperation fenceQueryRequestImpl$QueryFenceOperation = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fenceQueryRequestImpl$QueryFenceOperation = (FenceQueryRequestImpl$QueryFenceOperation)b.fW(parcel, fs, FenceQueryRequestImpl$QueryFenceOperation.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new FenceQueryRequestImpl(fn, fenceQueryRequestImpl$QueryFenceOperation);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public FenceQueryRequestImpl[] NL(final int n) {
        return new FenceQueryRequestImpl[n];
    }
}
