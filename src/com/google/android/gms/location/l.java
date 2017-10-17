// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.location.internal.ParcelableGeofence;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class l implements Parcelable$Creator
{
    static void Ik(final GeofencingRequest geofencingRequest, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hQ(parcel, 1, geofencingRequest.IR(), false);
        a.hX(parcel, 2, geofencingRequest.IQ());
        a.hX(parcel, 1000, geofencingRequest.IS());
        a.hS(parcel, hm);
    }
    
    public GeofencingRequest[] Il(final int n) {
        return new GeofencingRequest[n];
    }
    
    public GeofencingRequest Im(final Parcel parcel) {
        int ib = 0;
        final int ix = b.ix(parcel);
        List in = null;
        int ib2 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    in = b.iN(parcel, ig, (Parcelable$Creator)ParcelableGeofence.CREATOR);
                    continue;
                }
                case 2: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new GeofencingRequest(ib2, in, ib);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
