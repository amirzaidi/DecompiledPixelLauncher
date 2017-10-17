// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void Jp(final StreetViewPanoramaCamera streetViewPanoramaCamera, final Parcel parcel, final int n) {
        final int hm = com.google.android.gms.common.internal.safeparcel.a.hM(parcel);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 1, streetViewPanoramaCamera.JX());
        com.google.android.gms.common.internal.safeparcel.a.ig(parcel, 2, streetViewPanoramaCamera.FO);
        com.google.android.gms.common.internal.safeparcel.a.ig(parcel, 3, streetViewPanoramaCamera.FL);
        com.google.android.gms.common.internal.safeparcel.a.ig(parcel, 4, streetViewPanoramaCamera.FP);
        com.google.android.gms.common.internal.safeparcel.a.hS(parcel, hm);
    }
    
    public StreetViewPanoramaCamera Jq(final Parcel parcel) {
        float ix = 0.0f;
        final int ix2 = b.ix(parcel);
        float ix3 = 0.0f;
        int ib = 0;
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
                    ix3 = b.iX(parcel, ig);
                    continue;
                }
                case 3: {
                    ix4 = b.iX(parcel, ig);
                    continue;
                }
                case 4: {
                    ix = b.iX(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix2) {
            return new StreetViewPanoramaCamera(ib, ix3, ix4, ix);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix2).toString(), parcel);
    }
    
    public StreetViewPanoramaCamera[] Jr(final int n) {
        return new StreetViewPanoramaCamera[n];
    }
}
