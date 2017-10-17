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
    static void NN(final InterestUpdateBatchImpl$Operation interestUpdateBatchImpl$Operation, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, interestUpdateBatchImpl$Operation.Ot());
        a.hX(parcel, 2, interestUpdateBatchImpl$Operation.Os());
        a.hK(parcel, 3, (Parcelable)interestUpdateBatchImpl$Operation.Or(), n, false);
        a.ic(parcel, 4, interestUpdateBatchImpl$Operation.Ou(), false);
        a.hS(parcel, hm);
    }
    
    public InterestUpdateBatchImpl$Operation[] NM(final int n) {
        return new InterestUpdateBatchImpl$Operation[n];
    }
    
    public InterestUpdateBatchImpl$Operation NO(final Parcel parcel) {
        InterestRecordStub interestRecordStub = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        int ib2 = 0;
        String ie = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    break;
                }
                case 1: {
                    ib2 = b.iB(parcel, ig);
                    break;
                }
                case 2: {
                    ib = b.iB(parcel, ig);
                    break;
                }
                case 3: {
                    interestRecordStub = (InterestRecordStub)b.iK(parcel, ig, InterestRecordStub.CREATOR);
                    break;
                }
                case 4: {
                    ie = b.iE(parcel, ig);
                    break;
                }
            }
            final String s = ie;
            interestRecordStub = interestRecordStub;
            ie = s;
        }
        if (parcel.dataPosition() == ix) {
            return new InterestUpdateBatchImpl$Operation(ib2, ib, interestRecordStub, ie);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
