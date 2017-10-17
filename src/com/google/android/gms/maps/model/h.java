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
    static void Jg(final StreetViewPanoramaLink streetViewPanoramaLink, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, streetViewPanoramaLink.IF());
        a.fo(parcel, 2, streetViewPanoramaLink.DM, false);
        a.fs(parcel, 3, streetViewPanoramaLink.DN);
        a.fe(parcel, ey);
    }
    
    public StreetViewPanoramaLink[] Je(final int n) {
        return new StreetViewPanoramaLink[n];
    }
    
    public StreetViewPanoramaLink Jf(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        String fq = null;
        float gj = 0.0f;
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
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 3: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new StreetViewPanoramaLink(fn, fq, gj);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
