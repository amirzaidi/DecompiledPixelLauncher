// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void eC(final WeatherImpl weatherImpl, final Parcel parcel, final int n) {
        final int hm = com.google.android.gms.common.internal.safeparcel.a.hM(parcel);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 1, weatherImpl.fr());
        com.google.android.gms.common.internal.safeparcel.a.ig(parcel, 2, weatherImpl.fl());
        com.google.android.gms.common.internal.safeparcel.a.ig(parcel, 3, weatherImpl.fp());
        com.google.android.gms.common.internal.safeparcel.a.ig(parcel, 4, weatherImpl.fo());
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 5, weatherImpl.fq());
        com.google.android.gms.common.internal.safeparcel.a.ib(parcel, 6, weatherImpl.fn(), false);
        com.google.android.gms.common.internal.safeparcel.a.hS(parcel, hm);
    }
    
    public WeatherImpl eB(final Parcel parcel) {
        int ib = 0;
        float ix = 0.0f;
        final int ix2 = b.ix(parcel);
        int[] iy = null;
        float ix3 = 0.0f;
        float ix4 = 0.0f;
        int ib2 = 0;
        while (parcel.dataPosition() < ix2) {
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
                    ix4 = b.iX(parcel, ig);
                    continue;
                }
                case 3: {
                    ix3 = b.iX(parcel, ig);
                    continue;
                }
                case 4: {
                    ix = b.iX(parcel, ig);
                    continue;
                }
                case 5: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 6: {
                    iy = b.iy(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix2) {
            return new WeatherImpl(ib2, ix4, ix3, ix, ib, iy);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix2).toString(), parcel);
    }
    
    public WeatherImpl[] eD(final int n) {
        return new WeatherImpl[n];
    }
}
