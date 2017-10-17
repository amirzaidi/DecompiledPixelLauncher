// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.contextmanager.interest;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void RX(final InterestRecordStub interestRecordStub, final Parcel parcel, final int n) {
        final int hm = com.google.android.gms.common.internal.safeparcel.a.hM(parcel);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 1, interestRecordStub.RU());
        com.google.android.gms.common.internal.safeparcel.a.ij(parcel, 2, interestRecordStub.RT(), false);
        com.google.android.gms.common.internal.safeparcel.a.hS(parcel, hm);
    }
    
    public InterestRecordStub RV(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        byte[] it = null;
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
                    it = b.iT(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new InterestRecordStub(ib, it);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public InterestRecordStub[] RW(final int n) {
        return new InterestRecordStub[n];
    }
}
