// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class i implements Parcelable$Creator
{
    static void Jk(final CircleOptions circleOptions, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, circleOptions.Kv());
        a.eW(parcel, 2, (Parcelable)circleOptions.Kr(), n, false);
        a.fq(parcel, 3, circleOptions.getRadius());
        a.fs(parcel, 4, circleOptions.Kt());
        a.fj(parcel, 5, circleOptions.Kw());
        a.fj(parcel, 6, circleOptions.Kx());
        a.fs(parcel, 7, circleOptions.Ks());
        a.fa(parcel, 8, circleOptions.isVisible());
        a.fa(parcel, 9, circleOptions.Ku());
        a.fe(parcel, ey);
    }
    
    public CircleOptions Ji(final Parcel parcel) {
        float gj = 0.0f;
        boolean fx = false;
        final int fj = b.fJ(parcel);
        LatLng latLng = null;
        double gb = 0.0;
        boolean fx2 = false;
        int fn = 0;
        int fn2 = 0;
        float gj2 = 0.0f;
        int fn3 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    latLng = (LatLng)b.fW(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 3: {
                    gb = b.gb(parcel, fs);
                    continue;
                }
                case 4: {
                    gj2 = b.gj(parcel, fs);
                    continue;
                }
                case 5: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 6: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 7: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
                case 8: {
                    fx2 = b.fX(parcel, fs);
                    continue;
                }
                case 9: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new CircleOptions(fn3, latLng, gb, gj2, fn2, fn, gj, fx2, fx);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public CircleOptions[] Jj(final int n) {
        return new CircleOptions[n];
    }
}
