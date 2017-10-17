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
    static void FF(final FusedLocationProviderResult fusedLocationProviderResult, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.eW(parcel, 1, (Parcelable)fusedLocationProviderResult.dr(), n, false);
        a.fj(parcel, 1000, fusedLocationProviderResult.Fh());
        a.fe(parcel, ey);
    }
    
    public FusedLocationProviderResult FD(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        Status status = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    status = (Status)b.fW(parcel, fs, Status.CREATOR);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new FusedLocationProviderResult(fn, status);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public FusedLocationProviderResult[] FE(final int n) {
        return new FusedLocationProviderResult[n];
    }
}
