// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class k implements Parcelable$Creator
{
    static void Jn(final LatLng latLng, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, latLng.JY());
        a.fq(parcel, 2, latLng.EU);
        a.fq(parcel, 3, latLng.EV);
        a.fe(parcel, ey);
    }
    
    public LatLng Jo(final Parcel parcel) {
        double gb = 0.0;
        final int fj = b.fJ(parcel);
        int fn = 0;
        double gb2 = gb;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    gb2 = b.gb(parcel, fs);
                    continue;
                }
                case 3: {
                    gb = b.gb(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new LatLng(fn, gb2, gb);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public LatLng[] Jp(final int n) {
        return new LatLng[n];
    }
}
