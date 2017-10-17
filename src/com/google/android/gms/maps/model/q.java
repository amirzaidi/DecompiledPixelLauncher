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

public class q implements Parcelable$Creator
{
    static void Kc(final LatLngBounds latLngBounds, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, latLngBounds.Iu());
        a.eW(parcel, 2, (Parcelable)latLngBounds.DA, n, false);
        a.eW(parcel, 3, (Parcelable)latLngBounds.DB, n, false);
        a.fe(parcel, ey);
    }
    
    public LatLngBounds[] Ka(final int n) {
        return new LatLngBounds[n];
    }
    
    public LatLngBounds Kb(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        LatLng latLng = null;
        int fn = 0;
        LatLng latLng2 = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            int n = 0;
            LatLng latLng5 = null;
            LatLng latLng6 = null;
            Label_0116: {
                switch (b.ga(fs)) {
                    default: {
                        b.fA(parcel, fs);
                        break;
                    }
                    case 1: {
                        fn = b.fN(parcel, fs);
                        break;
                    }
                    case 2: {
                        final LatLng latLng3 = (LatLng)b.fW(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                        n = fn;
                        final LatLng latLng4 = latLng3;
                        latLng5 = latLng2;
                        latLng6 = latLng4;
                        break Label_0116;
                    }
                    case 3: {
                        latLng5 = (LatLng)b.fW(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                        latLng6 = latLng;
                        n = fn;
                        break Label_0116;
                    }
                }
                latLng5 = latLng2;
                latLng6 = latLng;
                n = fn;
            }
            fn = n;
            latLng = latLng6;
            latLng2 = latLng5;
        }
        if (parcel.dataPosition() == fj) {
            return new LatLngBounds(fn, latLng, latLng2);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
