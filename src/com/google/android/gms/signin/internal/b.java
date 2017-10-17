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
    static void PX(final SignInRequest signInRequest, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, signInRequest.JN);
        a.eW(parcel, 2, (Parcelable)signInRequest.PV(), n, false);
        a.fe(parcel, ey);
    }
    
    public SignInRequest PW(final Parcel parcel) {
        final int fj = com.google.android.gms.common.internal.safeparcel.b.fJ(parcel);
        int fn = 0;
        ResolveAccountRequest resolveAccountRequest = null;
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
                    resolveAccountRequest = (ResolveAccountRequest)com.google.android.gms.common.internal.safeparcel.b.fW(parcel, fs, ResolveAccountRequest.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new SignInRequest(fn, resolveAccountRequest);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public SignInRequest[] PY(final int n) {
        return new SignInRequest[n];
    }
}
