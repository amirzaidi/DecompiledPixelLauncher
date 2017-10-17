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
    static void NY(final FenceStateImpl fenceStateImpl, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, fenceStateImpl.Oz());
        a.fj(parcel, 2, fenceStateImpl.OA());
        a.fw(parcel, 3, fenceStateImpl.Oy());
        a.fo(parcel, 4, fenceStateImpl.OB(), false);
        a.fj(parcel, 5, fenceStateImpl.Ox());
        a.fe(parcel, ey);
    }
    
    public FenceStateImpl NZ(final Parcel parcel) {
        int fn = 0;
        final int fj = b.fJ(parcel);
        long fl = 0L;
        String fq = null;
        int fn2 = 0;
        int fn3 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 3: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
                case 4: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 5: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new FenceStateImpl(fn3, fn2, fl, fq, fn);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public FenceStateImpl[] Oa(final int n) {
        return new FenceStateImpl[n];
    }
}
