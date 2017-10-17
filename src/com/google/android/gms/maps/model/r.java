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

public class r implements Parcelable$Creator
{
    static void Kn(final PointOfInterest pointOfInterest, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, pointOfInterest.JZ());
        a.eW(parcel, 2, (Parcelable)pointOfInterest.EZ, n, false);
        a.fo(parcel, 3, pointOfInterest.EY, false);
        a.fo(parcel, 4, pointOfInterest.name, false);
        a.fe(parcel, ey);
    }
    
    public PointOfInterest Kl(final Parcel parcel) {
        LatLng latLng = null;
        final int fj = b.fJ(parcel);
        String fq = null;
        int fn = 0;
        String fq2 = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
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
                    latLng = (LatLng)b.fW(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                    break;
                }
                case 3: {
                    fq = b.fQ(parcel, fs);
                    break;
                }
                case 4: {
                    fq2 = b.fQ(parcel, fs);
                    break;
                }
            }
            final String s = fq2;
            final String s2 = fq;
            latLng = latLng;
            fq = s2;
            fq2 = s;
        }
        if (parcel.dataPosition() == fj) {
            return new PointOfInterest(fn, latLng, fq, fq2);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public PointOfInterest[] Km(final int n) {
        return new PointOfInterest[n];
    }
}
