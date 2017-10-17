// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.reporting;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.accounts.Account;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void FS(final UploadRequest uploadRequest, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, uploadRequest.Gp());
        a.eW(parcel, 2, (Parcelable)uploadRequest.getAccount(), n, false);
        a.fo(parcel, 3, uploadRequest.Gk(), false);
        a.fw(parcel, 4, uploadRequest.Go());
        a.fw(parcel, 5, uploadRequest.Gl());
        a.fw(parcel, 6, uploadRequest.Gm());
        a.fo(parcel, 7, uploadRequest.Gn(), false);
        a.fe(parcel, ey);
    }
    
    public UploadRequest createFromParcel(final Parcel parcel) {
        long fl = 0L;
        String fq = null;
        final int fj = com.google.android.gms.common.internal.safeparcel.b.fJ(parcel);
        int fn = 0;
        long fl2 = fl;
        long fl3 = fl;
        String fq2 = null;
        Account account = null;
        while (parcel.dataPosition() < fj) {
            final int fs = com.google.android.gms.common.internal.safeparcel.b.fS(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.ga(fs)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = com.google.android.gms.common.internal.safeparcel.b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    account = (Account)com.google.android.gms.common.internal.safeparcel.b.fW(parcel, fs, Account.CREATOR);
                    continue;
                }
                case 3: {
                    fq2 = com.google.android.gms.common.internal.safeparcel.b.fQ(parcel, fs);
                    continue;
                }
                case 4: {
                    fl3 = com.google.android.gms.common.internal.safeparcel.b.fL(parcel, fs);
                    continue;
                }
                case 5: {
                    fl2 = com.google.android.gms.common.internal.safeparcel.b.fL(parcel, fs);
                    continue;
                }
                case 6: {
                    fl = com.google.android.gms.common.internal.safeparcel.b.fL(parcel, fs);
                    continue;
                }
                case 7: {
                    fq = com.google.android.gms.common.internal.safeparcel.b.fQ(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new UploadRequest(fn, account, fq2, fl3, fl2, fl, fq);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public UploadRequest[] newArray(final int n) {
        return new UploadRequest[n];
    }
}
