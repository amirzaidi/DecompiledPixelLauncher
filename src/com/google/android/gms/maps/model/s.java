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

public class s implements Parcelable$Creator
{
    static void Kq(final VisibleRegion visibleRegion, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, visibleRegion.Jm());
        a.eW(parcel, 2, (Parcelable)visibleRegion.Ep, n, false);
        a.eW(parcel, 3, (Parcelable)visibleRegion.Eq, n, false);
        a.eW(parcel, 4, (Parcelable)visibleRegion.Er, n, false);
        a.eW(parcel, 5, (Parcelable)visibleRegion.Em, n, false);
        a.eW(parcel, 6, (Parcelable)visibleRegion.En, n, false);
        a.fe(parcel, ey);
    }
    
    public VisibleRegion Ko(final Parcel parcel) {
        LatLngBounds latLngBounds = null;
        final int fj = b.fJ(parcel);
        int fn = 0;
        LatLng latLng = null;
        LatLng latLng2 = null;
        LatLng latLng3 = null;
        LatLng latLng4 = null;
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
                    latLng4 = (LatLng)b.fW(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 3: {
                    latLng3 = (LatLng)b.fW(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 4: {
                    latLng2 = (LatLng)b.fW(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 5: {
                    latLng = (LatLng)b.fW(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 6: {
                    latLngBounds = (LatLngBounds)b.fW(parcel, fs, (Parcelable$Creator)LatLngBounds.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new VisibleRegion(fn, latLng4, latLng3, latLng2, latLng, latLngBounds);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public VisibleRegion[] Kp(final int n) {
        return new VisibleRegion[n];
    }
}
