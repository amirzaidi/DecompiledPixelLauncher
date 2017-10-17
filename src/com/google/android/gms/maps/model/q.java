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
    static void KV(final LatLngBounds latLngBounds, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, latLngBounds.Jn());
        a.hK(parcel, 2, (Parcelable)latLngBounds.Ff, n, false);
        a.hK(parcel, 3, (Parcelable)latLngBounds.Fg, n, false);
        a.hS(parcel, hm);
    }
    
    public LatLngBounds[] KT(final int n) {
        return new LatLngBounds[n];
    }
    
    public LatLngBounds KU(final Parcel parcel) {
        final int ix = b.ix(parcel);
        LatLng latLng = null;
        int ib = 0;
        LatLng latLng2 = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            int n = 0;
            LatLng latLng5 = null;
            LatLng latLng6 = null;
            Label_0116: {
                switch (b.iO(ig)) {
                    default: {
                        b.io(parcel, ig);
                        break;
                    }
                    case 1: {
                        ib = b.iB(parcel, ig);
                        break;
                    }
                    case 2: {
                        final LatLng latLng3 = (LatLng)b.iK(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                        n = ib;
                        final LatLng latLng4 = latLng3;
                        latLng5 = latLng2;
                        latLng6 = latLng4;
                        break Label_0116;
                    }
                    case 3: {
                        latLng5 = (LatLng)b.iK(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                        latLng6 = latLng;
                        n = ib;
                        break Label_0116;
                    }
                }
                latLng5 = latLng2;
                latLng6 = latLng;
                n = ib;
            }
            ib = n;
            latLng = latLng6;
            latLng2 = latLng5;
        }
        if (parcel.dataPosition() == ix) {
            return new LatLngBounds(ib, latLng, latLng2);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
