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
    static void om(final FavaDiagnosticsEntity favaDiagnosticsEntity, final Parcel parcel, final int n) {
        final int hm = com.google.android.gms.common.internal.safeparcel.a.hM(parcel);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 1, favaDiagnosticsEntity.lg);
        com.google.android.gms.common.internal.safeparcel.a.ic(parcel, 2, favaDiagnosticsEntity.lh, false);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 3, favaDiagnosticsEntity.lf);
        com.google.android.gms.common.internal.safeparcel.a.hS(parcel, hm);
    }
    
    public FavaDiagnosticsEntity[] on(final int n) {
        return new FavaDiagnosticsEntity[n];
    }
    
    public FavaDiagnosticsEntity oo(final Parcel parcel) {
        int ib = 0;
        final int ix = b.ix(parcel);
        String ie = null;
        int ib2 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 3: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new FavaDiagnosticsEntity(ib2, ie, ib);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
