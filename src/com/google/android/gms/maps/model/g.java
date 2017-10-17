// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class g implements Parcelable$Creator
{
    static void IW(final PolylineOptions polylineOptions, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, polylineOptions.Kj());
        a.fc(parcel, 2, polylineOptions.Kk(), false);
        a.fs(parcel, 3, polylineOptions.getWidth());
        a.fj(parcel, 4, polylineOptions.Kf());
        a.fs(parcel, 5, polylineOptions.Kg());
        a.fa(parcel, 6, polylineOptions.isVisible());
        a.fa(parcel, 7, polylineOptions.Kh());
        a.fa(parcel, 8, polylineOptions.Ki());
        a.fe(parcel, ey);
    }
    
    public PolylineOptions IV(final Parcel parcel) {
        float gj = 0.0f;
        boolean fx = false;
        final int fj = b.fJ(parcel);
        List fz = null;
        boolean fx2 = false;
        boolean fx3 = false;
        int fn = 0;
        float gj2 = 0.0f;
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
                    fz = b.fZ(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 3: {
                    gj2 = b.gj(parcel, fs);
                    continue;
                }
                case 4: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 5: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
                case 6: {
                    fx3 = b.fX(parcel, fs);
                    continue;
                }
                case 7: {
                    fx2 = b.fX(parcel, fs);
                    continue;
                }
                case 8: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new PolylineOptions(fn2, fz, gj2, fn, gj, fx3, fx2, fx);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public PolylineOptions[] IX(final int n) {
        return new PolylineOptions[n];
    }
}
