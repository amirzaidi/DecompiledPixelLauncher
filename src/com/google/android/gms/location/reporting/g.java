// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.reporting;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.accounts.Account;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class g implements Parcelable$Creator
{
    static void Gq(final OptInRequest optInRequest, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, optInRequest.Gv());
        a.eW(parcel, 2, (Parcelable)optInRequest.getAccount(), n, false);
        a.fo(parcel, 3, optInRequest.getTag(), false);
        a.fe(parcel, ey);
    }
    
    public OptInRequest createFromParcel(final Parcel parcel) {
        Account account = null;
        final int fj = b.fJ(parcel);
        int fn = 0;
        String fq = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    break;
                }
                case 1: {
                    fn = b.fN(parcel, fs);
                    break;
                }
                case 2: {
                    account = (Account)b.fW(parcel, fs, Account.CREATOR);
                    break;
                }
                case 3: {
                    fq = b.fQ(parcel, fs);
                    break;
                }
            }
            final String s = fq;
            account = account;
            fq = s;
        }
        if (parcel.dataPosition() == fj) {
            return new OptInRequest(fn, account, fq);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public OptInRequest[] newArray(final int n) {
        return new OptInRequest[n];
    }
}
