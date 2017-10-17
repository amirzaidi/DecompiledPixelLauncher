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
    static void Lj(final VisibleRegion visibleRegion, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, visibleRegion.Kf());
        a.hK(parcel, 2, (Parcelable)visibleRegion.FU, n, false);
        a.hK(parcel, 3, (Parcelable)visibleRegion.FV, n, false);
        a.hK(parcel, 4, (Parcelable)visibleRegion.FW, n, false);
        a.hK(parcel, 5, (Parcelable)visibleRegion.FR, n, false);
        a.hK(parcel, 6, (Parcelable)visibleRegion.FS, n, false);
        a.hS(parcel, hm);
    }
    
    public VisibleRegion Lh(final Parcel parcel) {
        LatLngBounds latLngBounds = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        LatLng latLng = null;
        LatLng latLng2 = null;
        LatLng latLng3 = null;
        LatLng latLng4 = null;
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
                    latLng4 = (LatLng)b.iK(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 3: {
                    latLng3 = (LatLng)b.iK(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 4: {
                    latLng2 = (LatLng)b.iK(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 5: {
                    latLng = (LatLng)b.iK(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 6: {
                    latLngBounds = (LatLngBounds)b.iK(parcel, ig, (Parcelable$Creator)LatLngBounds.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new VisibleRegion(ib, latLng4, latLng3, latLng2, latLng, latLngBounds);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public VisibleRegion[] Li(final int n) {
        return new VisibleRegion[n];
    }
}
