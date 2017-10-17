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
    static void KP(final CameraPosition cameraPosition, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, cameraPosition.KX());
        a.hK(parcel, 2, (Parcelable)cameraPosition.GL, n, false);
        a.ig(parcel, 3, cameraPosition.GM);
        a.ig(parcel, 4, cameraPosition.GJ);
        a.ig(parcel, 5, cameraPosition.GN);
        a.hS(parcel, hm);
    }
    
    public CameraPosition[] KO(final int n) {
        return new CameraPosition[n];
    }
    
    public CameraPosition KQ(final Parcel parcel) {
        float ix = 0.0f;
        final int ix2 = b.ix(parcel);
        int ib = 0;
        LatLng latLng = null;
        float ix3 = 0.0f;
        float ix4 = 0.0f;
        while (parcel.dataPosition() < ix2) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    latLng = (LatLng)b.iK(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 3: {
                    ix4 = b.iX(parcel, ig);
                    continue;
                }
                case 4: {
                    ix3 = b.iX(parcel, ig);
                    continue;
                }
                case 5: {
                    ix = b.iX(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix2) {
            return new CameraPosition(ib, latLng, ix4, ix3, ix);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix2).toString(), parcel);
    }
}
