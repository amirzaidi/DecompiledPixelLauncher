// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class k implements Parcelable$Creator
{
    static void Kg(final LatLng latLng, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, latLng.KR());
        a.ie(parcel, 2, latLng.Gz);
        a.ie(parcel, 3, latLng.GA);
        a.hS(parcel, hm);
    }
    
    public LatLng Kh(final Parcel parcel) {
        double ip = 0.0;
        final int ix = b.ix(parcel);
        int ib = 0;
        double ip2 = ip;
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
                    ip2 = b.iP(parcel, ig);
                    continue;
                }
                case 3: {
                    ip = b.iP(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new LatLng(ib, ip2, ip);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public LatLng[] Ki(final int n) {
        return new LatLng[n];
    }
}
