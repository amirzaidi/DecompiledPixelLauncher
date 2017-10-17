// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class g implements Parcelable$Creator
{
    static void JP(final PolylineOptions polylineOptions, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, polylineOptions.Lc());
        a.hQ(parcel, 2, polylineOptions.Ld(), false);
        a.ig(parcel, 3, polylineOptions.getWidth());
        a.hX(parcel, 4, polylineOptions.KY());
        a.ig(parcel, 5, polylineOptions.KZ());
        a.hO(parcel, 6, polylineOptions.isVisible());
        a.hO(parcel, 7, polylineOptions.La());
        a.hO(parcel, 8, polylineOptions.Lb());
        a.hS(parcel, hm);
    }
    
    public PolylineOptions JO(final Parcel parcel) {
        float ix = 0.0f;
        boolean il = false;
        final int ix2 = b.ix(parcel);
        List in = null;
        boolean il2 = false;
        boolean il3 = false;
        int ib = 0;
        float ix3 = 0.0f;
        int ib2 = 0;
        while (parcel.dataPosition() < ix2) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    in = b.iN(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 3: {
                    ix3 = b.iX(parcel, ig);
                    continue;
                }
                case 4: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 5: {
                    ix = b.iX(parcel, ig);
                    continue;
                }
                case 6: {
                    il3 = b.iL(parcel, ig);
                    continue;
                }
                case 7: {
                    il2 = b.iL(parcel, ig);
                    continue;
                }
                case 8: {
                    il = b.iL(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix2) {
            return new PolylineOptions(ib2, in, ix3, ib, ix, il3, il2, il);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix2).toString(), parcel);
    }
    
    public PolylineOptions[] JQ(final int n) {
        return new PolylineOptions[n];
    }
}
