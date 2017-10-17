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
    static void QN(final SignInResponse signInResponse, final Parcel parcel, final int n) {
        final int hm = com.google.android.gms.common.internal.safeparcel.a.hM(parcel);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 1, signInResponse.LK);
        com.google.android.gms.common.internal.safeparcel.a.hK(parcel, 2, (Parcelable)signInResponse.Rg(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.hK(parcel, 3, (Parcelable)signInResponse.Rf(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.hS(parcel, hm);
    }
    
    public SignInResponse[] QL(final int n) {
        return new SignInResponse[n];
    }
    
    public SignInResponse QM(final Parcel parcel) {
        final int ix = b.ix(parcel);
        ConnectionResult connectionResult = null;
        int ib = 0;
        ResolveAccountResponse resolveAccountResponse = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            int n = 0;
            ResolveAccountResponse resolveAccountResponse2 = null;
            ConnectionResult connectionResult4 = null;
            Label_0116: {
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
                        final ConnectionResult connectionResult2 = (ConnectionResult)b.iK(parcel, ig, ConnectionResult.CREATOR);
                        n = ib;
                        final ConnectionResult connectionResult3 = connectionResult2;
                        resolveAccountResponse2 = resolveAccountResponse;
                        connectionResult4 = connectionResult3;
                        break Label_0116;
                    }
                    case 3: {
                        resolveAccountResponse2 = (ResolveAccountResponse)b.iK(parcel, ig, ResolveAccountResponse.CREATOR);
                        connectionResult4 = connectionResult;
                        n = ib;
                        break Label_0116;
                    }
                }
                resolveAccountResponse2 = resolveAccountResponse;
                connectionResult4 = connectionResult;
                n = ib;
            }
            ib = n;
            connectionResult = connectionResult4;
            resolveAccountResponse = resolveAccountResponse2;
        }
        if (parcel.dataPosition() == ix) {
            return new SignInResponse(ib, connectionResult, resolveAccountResponse);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
