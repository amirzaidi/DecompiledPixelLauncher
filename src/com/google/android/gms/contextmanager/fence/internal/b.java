// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void NH(final FenceStateMapImpl fenceStateMapImpl, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, fenceStateMapImpl.ND());
        a.eT(parcel, 2, fenceStateMapImpl.NC(), false);
        a.fe(parcel, ey);
    }
    
    public FenceStateMapImpl[] NI(final int n) {
        return new FenceStateMapImpl[n];
    }
    
    public FenceStateMapImpl NJ(final Parcel parcel) {
        final int fj = com.google.android.gms.common.internal.safeparcel.b.fJ(parcel);
        int fn = 0;
        Bundle fp = null;
        while (parcel.dataPosition() < fj) {
            final int fs = com.google.android.gms.common.internal.safeparcel.b.fS(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.ga(fs)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = com.google.android.gms.common.internal.safeparcel.b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fp = com.google.android.gms.common.internal.safeparcel.b.fP(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new FenceStateMapImpl(fn, fp);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
