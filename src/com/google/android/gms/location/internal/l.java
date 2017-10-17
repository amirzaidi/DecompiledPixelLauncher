// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class l implements Parcelable$Creator
{
    static void Gy(final FusedLocationProviderResult fusedLocationProviderResult, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hK(parcel, 1, (Parcelable)fusedLocationProviderResult.gV(), n, false);
        a.hX(parcel, 1000, fusedLocationProviderResult.Ga());
        a.hS(parcel, hm);
    }
    
    public FusedLocationProviderResult Gw(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        Status status = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    status = (Status)b.iK(parcel, ig, Status.CREATOR);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new FusedLocationProviderResult(ib, status);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public FusedLocationProviderResult[] Gx(final int n) {
        return new FusedLocationProviderResult[n];
    }
}
