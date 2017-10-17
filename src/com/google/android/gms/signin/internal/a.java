// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void PU(final SignInResponse signInResponse, final Parcel parcel, final int n) {
        final int ey = com.google.android.gms.common.internal.safeparcel.a.eY(parcel);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 1, signInResponse.Kf);
        com.google.android.gms.common.internal.safeparcel.a.eW(parcel, 2, (Parcelable)signInResponse.Qn(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.eW(parcel, 3, (Parcelable)signInResponse.Qm(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.fe(parcel, ey);
    }
    
    public SignInResponse[] PS(final int n) {
        return new SignInResponse[n];
    }
    
    public SignInResponse PT(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        ConnectionResult connectionResult = null;
        int fn = 0;
        ResolveAccountResponse resolveAccountResponse = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            int n = 0;
            ResolveAccountResponse resolveAccountResponse2 = null;
            ConnectionResult connectionResult4 = null;
            Label_0116: {
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
                        final ConnectionResult connectionResult2 = (ConnectionResult)b.fW(parcel, fs, ConnectionResult.CREATOR);
                        n = fn;
                        final ConnectionResult connectionResult3 = connectionResult2;
                        resolveAccountResponse2 = resolveAccountResponse;
                        connectionResult4 = connectionResult3;
                        break Label_0116;
                    }
                    case 3: {
                        resolveAccountResponse2 = (ResolveAccountResponse)b.fW(parcel, fs, ResolveAccountResponse.CREATOR);
                        connectionResult4 = connectionResult;
                        n = fn;
                        break Label_0116;
                    }
                }
                resolveAccountResponse2 = resolveAccountResponse;
                connectionResult4 = connectionResult;
                n = fn;
            }
            fn = n;
            connectionResult = connectionResult4;
            resolveAccountResponse = resolveAccountResponse2;
        }
        if (parcel.dataPosition() == fj) {
            return new SignInResponse(fn, connectionResult, resolveAccountResponse);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
