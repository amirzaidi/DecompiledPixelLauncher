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
    static void Hj(final OptInRequest optInRequest, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, optInRequest.Ho());
        a.hK(parcel, 2, (Parcelable)optInRequest.getAccount(), n, false);
        a.ic(parcel, 3, optInRequest.getTag(), false);
        a.hS(parcel, hm);
    }
    
    public OptInRequest createFromParcel(final Parcel parcel) {
        Account account = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        String ie = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
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
                    account = (Account)b.iK(parcel, ig, Account.CREATOR);
                    break;
                }
                case 3: {
                    ie = b.iE(parcel, ig);
                    break;
                }
            }
            final String s = ie;
            account = account;
            ie = s;
        }
        if (parcel.dataPosition() == ix) {
            return new OptInRequest(ib, account, ie);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public OptInRequest[] newArray(final int n) {
        return new OptInRequest[n];
    }
}
