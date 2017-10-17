// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Bundle;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.accounts.Account;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class d implements Parcelable$Creator
{
    static void jw(final GetServiceRequest getServiceRequest, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, getServiceRequest.version);
        a.hX(parcel, 2, getServiceRequest.hY);
        a.hX(parcel, 3, getServiceRequest.hV);
        a.ic(parcel, 4, getServiceRequest.hS, false);
        a.hT(parcel, 5, getServiceRequest.hZ, false);
        a.id(parcel, 6, (Parcelable[])getServiceRequest.hT, n, false);
        a.hH(parcel, 7, getServiceRequest.hW, false);
        a.hK(parcel, 8, (Parcelable)getServiceRequest.hX, n, false);
        a.ik(parcel, 9, getServiceRequest.hU);
        a.hS(parcel, hm);
    }
    
    public GetServiceRequest[] jx(final int n) {
        return new GetServiceRequest[n];
    }
    
    public GetServiceRequest jy(final Parcel parcel) {
        int ib = 0;
        Account account = null;
        final int ix = b.ix(parcel);
        long iz = 0L;
        Bundle id = null;
        Scope[] array = null;
        IBinder iv = null;
        String ie = null;
        int ib2 = 0;
        int ib3 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 3: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 4: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 5: {
                    iv = b.iV(parcel, ig);
                    continue;
                }
                case 6: {
                    array = (Scope[])b.iA(parcel, ig, Scope.CREATOR);
                    continue;
                }
                case 7: {
                    id = b.iD(parcel, ig);
                    continue;
                }
                case 8: {
                    account = (Account)b.iK(parcel, ig, Account.CREATOR);
                    continue;
                }
                case 9: {
                    iz = b.iz(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new GetServiceRequest(ib3, ib2, ib, ie, iv, array, id, account, iz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
