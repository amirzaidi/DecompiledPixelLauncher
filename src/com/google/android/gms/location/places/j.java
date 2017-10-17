// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class j implements Parcelable$Creator
{
    static void Fz(final NearbyAlertRequest nearbyAlertRequest, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, nearbyAlertRequest.Fe());
        a.hX(parcel, 2, nearbyAlertRequest.Fk());
        a.hK(parcel, 3, (Parcelable)nearbyAlertRequest.Fi(), n, false);
        a.hK(parcel, 4, (Parcelable)nearbyAlertRequest.Ff(), n, false);
        a.hO(parcel, 5, nearbyAlertRequest.Fh());
        a.hX(parcel, 6, nearbyAlertRequest.Fd());
        a.hX(parcel, 7, nearbyAlertRequest.Fg());
        a.hX(parcel, 1000, nearbyAlertRequest.Fj());
        a.hS(parcel, hm);
    }
    
    public NearbyAlertRequest FA(final Parcel parcel) {
        NearbyAlertFilter nearbyAlertFilter = null;
        int ib = 0;
        final int ix = b.ix(parcel);
        int ib2 = -1;
        int ib3 = 110;
        boolean il = false;
        PlaceFilter placeFilter = null;
        int ib4 = 0;
        int ib5 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib4 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 3: {
                    placeFilter = (PlaceFilter)b.iK(parcel, ig, (Parcelable$Creator)PlaceFilter.CREATOR);
                    continue;
                }
                case 4: {
                    nearbyAlertFilter = (NearbyAlertFilter)b.iK(parcel, ig, (Parcelable$Creator)NearbyAlertFilter.CREATOR);
                    continue;
                }
                case 5: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 6: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 7: {
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib5 = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new NearbyAlertRequest(ib5, ib4, ib2, placeFilter, nearbyAlertFilter, il, ib, ib3);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public NearbyAlertRequest[] FB(final int n) {
        return new NearbyAlertRequest[n];
    }
}
