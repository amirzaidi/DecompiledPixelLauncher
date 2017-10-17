// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class h implements Parcelable$Creator
{
    static void Ka(final StreetViewPanoramaLink streetViewPanoramaLink, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, streetViewPanoramaLink.Jy());
        a.ic(parcel, 2, streetViewPanoramaLink.Fr, false);
        a.ig(parcel, 3, streetViewPanoramaLink.Fs);
        a.hS(parcel, hm);
    }
    
    public StreetViewPanoramaLink[] JY(final int n) {
        return new StreetViewPanoramaLink[n];
    }
    
    public StreetViewPanoramaLink JZ(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        String ie = null;
        float ix2 = 0.0f;
        while (parcel.dataPosition() < ix) {
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
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 3: {
                    ix2 = b.iX(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new StreetViewPanoramaLink(ib, ie, ix2);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
