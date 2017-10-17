// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.IBinder;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class c implements Parcelable$Creator
{
    static void ID(final GroundOverlayOptions groundOverlayOptions, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, groundOverlayOptions.JL());
        a.ff(parcel, 2, groundOverlayOptions.JC(), false);
        a.eW(parcel, 3, (Parcelable)groundOverlayOptions.JD(), n, false);
        a.fs(parcel, 4, groundOverlayOptions.getWidth());
        a.fs(parcel, 5, groundOverlayOptions.getHeight());
        a.eW(parcel, 6, (Parcelable)groundOverlayOptions.JJ(), n, false);
        a.fs(parcel, 7, groundOverlayOptions.JH());
        a.fs(parcel, 8, groundOverlayOptions.JI());
        a.fa(parcel, 9, groundOverlayOptions.isVisible());
        a.fs(parcel, 10, groundOverlayOptions.JE());
        a.fs(parcel, 11, groundOverlayOptions.JG());
        a.fs(parcel, 12, groundOverlayOptions.JF());
        a.fa(parcel, 13, groundOverlayOptions.JK());
        a.fe(parcel, ey);
    }
    
    public GroundOverlayOptions IC(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        IBinder gh = null;
        LatLng latLng = null;
        float gj = 0.0f;
        float gj2 = 0.0f;
        LatLngBounds latLngBounds = null;
        float gj3 = 0.0f;
        float gj4 = 0.0f;
        boolean fx = false;
        float gj5 = 0.0f;
        float gj6 = 0.0f;
        float gj7 = 0.0f;
        boolean fx2 = false;
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
                    gh = b.gh(parcel, fs);
                    continue;
                }
                case 3: {
                    latLng = (LatLng)b.fW(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 4: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
                case 5: {
                    gj2 = b.gj(parcel, fs);
                    continue;
                }
                case 6: {
                    latLngBounds = (LatLngBounds)b.fW(parcel, fs, (Parcelable$Creator)LatLngBounds.CREATOR);
                    continue;
                }
                case 7: {
                    gj3 = b.gj(parcel, fs);
                    continue;
                }
                case 8: {
                    gj4 = b.gj(parcel, fs);
                    continue;
                }
                case 9: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 10: {
                    gj5 = b.gj(parcel, fs);
                    continue;
                }
                case 11: {
                    gj6 = b.gj(parcel, fs);
                    continue;
                }
                case 12: {
                    gj7 = b.gj(parcel, fs);
                    continue;
                }
                case 13: {
                    fx2 = b.fX(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new GroundOverlayOptions(fn, gh, latLng, gj, gj2, latLngBounds, gj3, gj4, fx, gj5, gj6, gj7, fx2);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public GroundOverlayOptions[] IE(final int n) {
        return new GroundOverlayOptions[n];
    }
}
