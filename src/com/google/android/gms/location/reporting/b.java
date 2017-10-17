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
    static void GL(final UploadRequest uploadRequest, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, uploadRequest.Hi());
        a.hK(parcel, 2, (Parcelable)uploadRequest.getAccount(), n, false);
        a.ic(parcel, 3, uploadRequest.Hd(), false);
        a.ik(parcel, 4, uploadRequest.Hh());
        a.ik(parcel, 5, uploadRequest.He());
        a.ik(parcel, 6, uploadRequest.Hf());
        a.ic(parcel, 7, uploadRequest.Hg(), false);
        a.hS(parcel, hm);
    }
    
    public UploadRequest createFromParcel(final Parcel parcel) {
        long iz = 0L;
        String ie = null;
        final int ix = com.google.android.gms.common.internal.safeparcel.b.ix(parcel);
        int ib = 0;
        long iz2 = iz;
        long iz3 = iz;
        String ie2 = null;
        Account account = null;
        while (parcel.dataPosition() < ix) {
            final int ig = com.google.android.gms.common.internal.safeparcel.b.iG(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.iO(ig)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib = com.google.android.gms.common.internal.safeparcel.b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    account = (Account)com.google.android.gms.common.internal.safeparcel.b.iK(parcel, ig, Account.CREATOR);
                    continue;
                }
                case 3: {
                    ie2 = com.google.android.gms.common.internal.safeparcel.b.iE(parcel, ig);
                    continue;
                }
                case 4: {
                    iz3 = com.google.android.gms.common.internal.safeparcel.b.iz(parcel, ig);
                    continue;
                }
                case 5: {
                    iz2 = com.google.android.gms.common.internal.safeparcel.b.iz(parcel, ig);
                    continue;
                }
                case 6: {
                    iz = com.google.android.gms.common.internal.safeparcel.b.iz(parcel, ig);
                    continue;
                }
                case 7: {
                    ie = com.google.android.gms.common.internal.safeparcel.b.iE(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new UploadRequest(ib, account, ie2, iz3, iz2, iz, ie);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public UploadRequest[] newArray(final int n) {
        return new UploadRequest[n];
    }
}
