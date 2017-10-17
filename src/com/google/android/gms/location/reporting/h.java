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
    static void Gw(final Deletion deletion, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, deletion.Gt());
        a.eW(parcel, 2, (Parcelable)deletion.getAccount(), n, false);
        a.fw(parcel, 3, deletion.Gs());
        a.fw(parcel, 4, deletion.Gr());
        a.fw(parcel, 5, deletion.Gu());
        a.fe(parcel, ey);
    }
    
    public Deletion createFromParcel(final Parcel parcel) {
        final long n = 0L;
        final int fj = b.fJ(parcel);
        Account account = null;
        long fl = n;
        long fl2 = n;
        long fl3 = n;
        int fn = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            long n2 = 0L;
            long n3 = 0L;
            Account account3 = null;
            int n4 = 0;
            long n5 = 0L;
            Label_0177: {
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
                        final Account account2 = (Account)b.fW(parcel, fs, Account.CREATOR);
                        n2 = fl2;
                        n3 = fl3;
                        account3 = account2;
                        n4 = fn;
                        n5 = fl;
                        break Label_0177;
                    }
                    case 3: {
                        fl3 = b.fL(parcel, fs);
                        break;
                    }
                    case 4: {
                        fl2 = b.fL(parcel, fs);
                        break;
                    }
                    case 5: {
                        fl = b.fL(parcel, fs);
                        break;
                    }
                }
                account3 = account;
                n4 = fn;
                n5 = fl;
                n2 = fl2;
                n3 = fl3;
            }
            fl3 = n3;
            fl2 = n2;
            account = account3;
            fn = n4;
            fl = n5;
        }
        if (parcel.dataPosition() == fj) {
            return new Deletion(fn, account, fl3, fl2, fl);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public Deletion[] newArray(final int n) {
        return new Deletion[n];
    }
}
