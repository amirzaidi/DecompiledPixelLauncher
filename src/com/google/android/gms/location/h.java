// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class h implements Parcelable$Creator
{
    static void HY(final LocationAvailability locationAvailability, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, locationAvailability.Dq);
        a.hX(parcel, 2, locationAvailability.Ds);
        a.ik(parcel, 3, locationAvailability.Dt);
        a.hX(parcel, 4, locationAvailability.Du);
        a.hX(parcel, 1000, locationAvailability.Hr());
        a.hS(parcel, hm);
    }
    
    public LocationAvailability createFromParcel(final Parcel parcel) {
        int ib = 1;
        final int ix = b.ix(parcel);
        int ib2 = 0;
        int ib3 = 1000;
        long iz = 0L;
        int ib4 = ib;
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
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 3: {
                    iz = b.iz(parcel, ig);
                    continue;
                }
                case 4: {
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new LocationAvailability(ib2, ib3, ib4, ib, iz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public LocationAvailability[] newArray(final int n) {
        return new LocationAvailability[n];
    }
}
