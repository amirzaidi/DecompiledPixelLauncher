// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import java.util.ArrayList;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class e implements Parcelable$Creator
{
    static void Mm(final InterestUpdateBatchImpl interestUpdateBatchImpl, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, interestUpdateBatchImpl.LV());
        a.fc(parcel, 2, interestUpdateBatchImpl.LU(), false);
        a.fe(parcel, ey);
    }
    
    public InterestUpdateBatchImpl[] Mk(final int n) {
        return new InterestUpdateBatchImpl[n];
    }
    
    public InterestUpdateBatchImpl Ml(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        ArrayList fz = null;
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
                    fz = b.fZ(parcel, fs, InterestUpdateBatchImpl$Operation.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new InterestUpdateBatchImpl(fn, fz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
