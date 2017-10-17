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
    static void NS(final FenceQueryRequestImpl$QueryFenceOperation fenceQueryRequestImpl$QueryFenceOperation, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, fenceQueryRequestImpl$QueryFenceOperation.OF());
        a.fj(parcel, 2, fenceQueryRequestImpl$QueryFenceOperation.OE());
        a.fr(parcel, 3, fenceQueryRequestImpl$QueryFenceOperation.OD(), false);
        a.fe(parcel, ey);
    }
    
    public FenceQueryRequestImpl$QueryFenceOperation NT(final Parcel parcel) {
        int fn = 0;
        final int fj = b.fJ(parcel);
        List fr = null;
        int fn2 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 3: {
                    fr = b.fR(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new FenceQueryRequestImpl$QueryFenceOperation(fn2, fn, fr);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public FenceQueryRequestImpl$QueryFenceOperation[] NU(final int n) {
        return new FenceQueryRequestImpl$QueryFenceOperation[n];
    }
}
