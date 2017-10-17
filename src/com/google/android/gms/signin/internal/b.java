// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void QQ(final SignInRequest signInRequest, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, signInRequest.Ls);
        a.hK(parcel, 2, (Parcelable)signInRequest.QO(), n, false);
        a.hS(parcel, hm);
    }
    
    public SignInRequest QP(final Parcel parcel) {
        final int ix = com.google.android.gms.common.internal.safeparcel.b.ix(parcel);
        int ib = 0;
        ResolveAccountRequest resolveAccountRequest = null;
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
                    resolveAccountRequest = (ResolveAccountRequest)com.google.android.gms.common.internal.safeparcel.b.iK(parcel, ig, ResolveAccountRequest.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new SignInRequest(ib, resolveAccountRequest);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public SignInRequest[] QR(final int n) {
        return new SignInRequest[n];
    }
}
