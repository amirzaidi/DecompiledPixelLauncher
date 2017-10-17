// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.contextmanager.interest.InterestRecordStub;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class i implements Parcelable$Creator
{
    static void MU(final InterestUpdateBatchImpl$Operation interestUpdateBatchImpl$Operation, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, interestUpdateBatchImpl$Operation.NA());
        a.fj(parcel, 2, interestUpdateBatchImpl$Operation.Nz());
        a.eW(parcel, 3, (Parcelable)interestUpdateBatchImpl$Operation.Ny(), n, false);
        a.fo(parcel, 4, interestUpdateBatchImpl$Operation.NB(), false);
        a.fe(parcel, ey);
    }
    
    public InterestUpdateBatchImpl$Operation[] MT(final int n) {
        return new InterestUpdateBatchImpl$Operation[n];
    }
    
    public InterestUpdateBatchImpl$Operation MV(final Parcel parcel) {
        InterestRecordStub interestRecordStub = null;
        final int fj = b.fJ(parcel);
        int fn = 0;
        int fn2 = 0;
        String fq = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    break;
                }
                case 1: {
                    fn2 = b.fN(parcel, fs);
                    break;
                }
                case 2: {
                    fn = b.fN(parcel, fs);
                    break;
                }
                case 3: {
                    interestRecordStub = (InterestRecordStub)b.fW(parcel, fs, InterestRecordStub.CREATOR);
                    break;
                }
                case 4: {
                    fq = b.fQ(parcel, fs);
                    break;
                }
            }
            final String s = fq;
            interestRecordStub = interestRecordStub;
            fq = s;
        }
        if (parcel.dataPosition() == fj) {
            return new InterestUpdateBatchImpl$Operation(fn2, fn, interestRecordStub, fq);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
