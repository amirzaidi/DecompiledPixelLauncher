// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void ly(final FavaDiagnosticsEntity favaDiagnosticsEntity, final Parcel parcel, final int n) {
        final int ey = com.google.android.gms.common.internal.safeparcel.a.eY(parcel);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 1, favaDiagnosticsEntity.io);
        com.google.android.gms.common.internal.safeparcel.a.fo(parcel, 2, favaDiagnosticsEntity.ip, false);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 3, favaDiagnosticsEntity.in);
        com.google.android.gms.common.internal.safeparcel.a.fe(parcel, ey);
    }
    
    public FavaDiagnosticsEntity lA(final Parcel parcel) {
        int fn = 0;
        final int fj = b.fJ(parcel);
        String fq = null;
        int fn2 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 3: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new FavaDiagnosticsEntity(fn2, fq, fn);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public FavaDiagnosticsEntity[] lz(final int n) {
        return new FavaDiagnosticsEntity[n];
    }
}
