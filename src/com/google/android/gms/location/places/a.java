// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void EO(final PlaceRequest placeRequest, final Parcel parcel, final int n) {
        final int hm = com.google.android.gms.common.internal.safeparcel.a.hM(parcel);
        com.google.android.gms.common.internal.safeparcel.a.hK(parcel, 2, (Parcelable)placeRequest.Ft(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.ik(parcel, 3, placeRequest.Fu());
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 4, placeRequest.Fs());
        com.google.android.gms.common.internal.safeparcel.a.ik(parcel, 5, placeRequest.Fv());
        com.google.android.gms.common.internal.safeparcel.a.hO(parcel, 6, placeRequest.Fr());
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 1000, placeRequest.BM);
        com.google.android.gms.common.internal.safeparcel.a.hS(parcel, hm);
    }
    
    public PlaceRequest EM(final Parcel parcel) {
        boolean il = false;
        final int ix = b.ix(parcel);
        PlaceFilter placeFilter = null;
        long iz = -1;
        int ib = -1;
        long iz2 = Long.MAX_VALUE;
        int ib2 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 2: {
                    placeFilter = (PlaceFilter)b.iK(parcel, ig, (Parcelable$Creator)PlaceFilter.CREATOR);
                    continue;
                }
                case 3: {
                    iz = b.iz(parcel, ig);
                    continue;
                }
                case 4: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 5: {
                    iz2 = b.iz(parcel, ig);
                    continue;
                }
                case 6: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new PlaceRequest(ib2, placeFilter, iz, ib, iz2, il);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public PlaceRequest[] EN(final int n) {
        return new PlaceRequest[n];
    }
}
