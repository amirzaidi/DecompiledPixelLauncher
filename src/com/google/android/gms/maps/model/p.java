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

public class p implements Parcelable$Creator
{
    static void JW(final CameraPosition cameraPosition, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, cameraPosition.Ke());
        a.eW(parcel, 2, (Parcelable)cameraPosition.Fg, n, false);
        a.fs(parcel, 3, cameraPosition.Fh);
        a.fs(parcel, 4, cameraPosition.Fe);
        a.fs(parcel, 5, cameraPosition.Fi);
        a.fe(parcel, ey);
    }
    
    public CameraPosition[] JV(final int n) {
        return new CameraPosition[n];
    }
    
    public CameraPosition JX(final Parcel parcel) {
        float gj = 0.0f;
        final int fj = b.fJ(parcel);
        int fn = 0;
        LatLng latLng = null;
        float gj2 = 0.0f;
        float gj3 = 0.0f;
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
                    latLng = (LatLng)b.fW(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 3: {
                    gj3 = b.gj(parcel, fs);
                    continue;
                }
                case 4: {
                    gj2 = b.gj(parcel, fs);
                    continue;
                }
                case 5: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new CameraPosition(fn, latLng, gj3, gj2, gj);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
