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

public class h implements Parcelable$Creator
{
    static void Hp(final Deletion deletion, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, deletion.Hm());
        a.hK(parcel, 2, (Parcelable)deletion.getAccount(), n, false);
        a.ik(parcel, 3, deletion.Hl());
        a.ik(parcel, 4, deletion.Hk());
        a.ik(parcel, 5, deletion.Hn());
        a.hS(parcel, hm);
    }
    
    public Deletion createFromParcel(final Parcel parcel) {
        final long n = 0L;
        final int ix = b.ix(parcel);
        Account account = null;
        long iz = n;
        long iz2 = n;
        long iz3 = n;
        int ib = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            long n2 = 0L;
            long n3 = 0L;
            Account account3 = null;
            int n4 = 0;
            long n5 = 0L;
            Label_0177: {
                switch (b.iO(ig)) {
                    default: {
                        b.io(parcel, ig);
                        break;
                    }
                    case 1: {
                        ib = b.iB(parcel, ig);
                        break;
                    }
                    case 2: {
                        final Account account2 = (Account)b.iK(parcel, ig, Account.CREATOR);
                        n2 = iz2;
                        n3 = iz3;
                        account3 = account2;
                        n4 = ib;
                        n5 = iz;
                        break Label_0177;
                    }
                    case 3: {
                        iz3 = b.iz(parcel, ig);
                        break;
                    }
                    case 4: {
                        iz2 = b.iz(parcel, ig);
                        break;
                    }
                    case 5: {
                        iz = b.iz(parcel, ig);
                        break;
                    }
                }
                account3 = account;
                n4 = ib;
                n5 = iz;
                n2 = iz2;
                n3 = iz3;
            }
            iz3 = n3;
            iz2 = n2;
            account = account3;
            ib = n4;
            iz = n5;
        }
        if (parcel.dataPosition() == ix) {
            return new Deletion(ib, account, iz3, iz2, iz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public Deletion[] newArray(final int n) {
        return new Deletion[n];
    }
}
