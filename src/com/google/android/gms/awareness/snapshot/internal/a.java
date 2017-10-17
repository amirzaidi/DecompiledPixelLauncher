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
    static void pI(final WeatherImpl weatherImpl, final Parcel parcel, final int n) {
        final int ey = com.google.android.gms.common.internal.safeparcel.a.eY(parcel);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 1, weatherImpl.qx());
        com.google.android.gms.common.internal.safeparcel.a.fs(parcel, 2, weatherImpl.qr());
        com.google.android.gms.common.internal.safeparcel.a.fs(parcel, 3, weatherImpl.qv());
        com.google.android.gms.common.internal.safeparcel.a.fs(parcel, 4, weatherImpl.qu());
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 5, weatherImpl.qw());
        com.google.android.gms.common.internal.safeparcel.a.fn(parcel, 6, weatherImpl.qt(), false);
        com.google.android.gms.common.internal.safeparcel.a.fe(parcel, ey);
    }
    
    public WeatherImpl pH(final Parcel parcel) {
        int fn = 0;
        float gj = 0.0f;
        final int fj = b.fJ(parcel);
        int[] fk = null;
        float gj2 = 0.0f;
        float gj3 = 0.0f;
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
                    gj3 = b.gj(parcel, fs);
                    continue;
                }
                case 3: {
                    gj2 = b.gj(parcel, fs);
                    continue;
                }
                case 4: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
                case 5: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 6: {
                    fk = b.fK(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new WeatherImpl(fn2, gj3, gj2, gj, fn, fk);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public WeatherImpl[] pJ(final int n) {
        return new WeatherImpl[n];
    }
}
