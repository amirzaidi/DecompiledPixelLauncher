// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.api.Scope;
import android.accounts.Account;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class g implements Parcelable$Creator
{
    static void Qi(final RecordConsentRequest recordConsentRequest, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, recordConsentRequest.JZ);
        a.eW(parcel, 2, (Parcelable)recordConsentRequest.getAccount(), n, false);
        a.fp(parcel, 3, (Parcelable[])recordConsentRequest.Qg(), n, false);
        a.fo(parcel, 4, recordConsentRequest.Qf(), false);
        a.fe(parcel, ey);
    }
    
    public RecordConsentRequest[] Qh(final int n) {
        return new RecordConsentRequest[n];
    }
    
    public RecordConsentRequest Qj(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        Scope[] array = null;
        Account account = null;
        int fn = 0;
        String fq = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            int n = 0;
            Account account3 = null;
            String s = null;
            Scope[] array3 = null;
            Label_0128: {
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
                        n = fn;
                        final Scope[] array2 = array;
                        account3 = account2;
                        s = fq;
                        array3 = array2;
                        break Label_0128;
                    }
                    case 3: {
                        final Scope[] array4 = (Scope[])b.fM(parcel, fs, Scope.CREATOR);
                        account3 = account;
                        n = fn;
                        final String s2 = fq;
                        array3 = array4;
                        s = s2;
                        break Label_0128;
                    }
                    case 4: {
                        fq = b.fQ(parcel, fs);
                        break;
                    }
                }
                s = fq;
                array3 = array;
                account3 = account;
                n = fn;
            }
            fn = n;
            account = account3;
            array = array3;
            fq = s;
        }
        if (parcel.dataPosition() == fj) {
            return new RecordConsentRequest(fn, account, array, fq);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
