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
    static void Rb(final RecordConsentRequest recordConsentRequest, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, recordConsentRequest.LE);
        a.hK(parcel, 2, (Parcelable)recordConsentRequest.getAccount(), n, false);
        a.id(parcel, 3, (Parcelable[])recordConsentRequest.QZ(), n, false);
        a.ic(parcel, 4, recordConsentRequest.QY(), false);
        a.hS(parcel, hm);
    }
    
    public RecordConsentRequest[] Ra(final int n) {
        return new RecordConsentRequest[n];
    }
    
    public RecordConsentRequest Rc(final Parcel parcel) {
        final int ix = b.ix(parcel);
        Scope[] array = null;
        Account account = null;
        int ib = 0;
        String ie = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            int n = 0;
            Account account3 = null;
            String s = null;
            Scope[] array3 = null;
            Label_0128: {
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
                        n = ib;
                        final Scope[] array2 = array;
                        account3 = account2;
                        s = ie;
                        array3 = array2;
                        break Label_0128;
                    }
                    case 3: {
                        final Scope[] array4 = (Scope[])b.iA(parcel, ig, Scope.CREATOR);
                        account3 = account;
                        n = ib;
                        final String s2 = ie;
                        array3 = array4;
                        s = s2;
                        break Label_0128;
                    }
                    case 4: {
                        ie = b.iE(parcel, ig);
                        break;
                    }
                }
                s = ie;
                array3 = array;
                account3 = account;
                n = ib;
            }
            ib = n;
            account = account3;
            array = array3;
            ie = s;
        }
        if (parcel.dataPosition() == ix) {
            return new RecordConsentRequest(ib, account, array, ie);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
