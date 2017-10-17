// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class t implements Parcelable$Creator
{
    static void Lt(final StreetViewPanoramaOrientation streetViewPanoramaOrientation, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, streetViewPanoramaOrientation.Jo());
        a.ig(parcel, 2, streetViewPanoramaOrientation.Fh);
        a.ig(parcel, 3, streetViewPanoramaOrientation.Fj);
        a.hS(parcel, hm);
    }
    
    public StreetViewPanoramaOrientation Lr(final Parcel parcel) {
        float ix = 0.0f;
        final int ix2 = b.ix(parcel);
        int ib = 0;
        float ix3 = 0.0f;
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
                    ix = b.iX(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix2) {
            return new StreetViewPanoramaOrientation(ib, ix3, ix);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix2).toString(), parcel);
    }
    
    public StreetViewPanoramaOrientation[] Ls(final int n) {
        return new StreetViewPanoramaOrientation[n];
    }
}
