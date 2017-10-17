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
    static void Rd(final InterestRecordStub interestRecordStub, final Parcel parcel, final int n) {
        final int ey = com.google.android.gms.common.internal.safeparcel.a.eY(parcel);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 1, interestRecordStub.Ra());
        com.google.android.gms.common.internal.safeparcel.a.fv(parcel, 2, interestRecordStub.QZ(), false);
        com.google.android.gms.common.internal.safeparcel.a.fe(parcel, ey);
    }
    
    public InterestRecordStub Rb(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        byte[] gf = null;
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
                    gf = b.gf(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new InterestRecordStub(fn, gf);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public InterestRecordStub[] Rc(final int n) {
        return new InterestRecordStub[n];
    }
}
