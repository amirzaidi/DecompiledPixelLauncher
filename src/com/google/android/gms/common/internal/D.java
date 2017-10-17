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
    static void gI(final GetServiceRequest getServiceRequest, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, getServiceRequest.fb);
        a.fj(parcel, 2, getServiceRequest.fg);
        a.fj(parcel, 3, getServiceRequest.fd);
        a.fo(parcel, 4, getServiceRequest.eZ, false);
        a.ff(parcel, 5, getServiceRequest.fh, false);
        a.fp(parcel, 6, (Parcelable[])getServiceRequest.fa, n, false);
        a.eT(parcel, 7, getServiceRequest.fe, false);
        a.eW(parcel, 8, (Parcelable)getServiceRequest.ff, n, false);
        a.fw(parcel, 9, getServiceRequest.fc);
        a.fe(parcel, ey);
    }
    
    public GetServiceRequest[] gJ(final int n) {
        return new GetServiceRequest[n];
    }
    
    public GetServiceRequest gK(final Parcel parcel) {
        int fn = 0;
        Account account = null;
        final int fj = b.fJ(parcel);
        long fl = 0L;
        Bundle fp = null;
        Scope[] array = null;
        IBinder gh = null;
        String fq = null;
        int fn2 = 0;
        int fn3 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 3: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 4: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 5: {
                    gh = b.gh(parcel, fs);
                    continue;
                }
                case 6: {
                    array = (Scope[])b.fM(parcel, fs, Scope.CREATOR);
                    continue;
                }
                case 7: {
                    fp = b.fP(parcel, fs);
                    continue;
                }
                case 8: {
                    account = (Account)b.fW(parcel, fs, Account.CREATOR);
                    continue;
                }
                case 9: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new GetServiceRequest(fn3, fn2, fn, fq, gh, array, fp, account, fl);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
