// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class n implements Parcelable$Creator
{
    static void IF(final LocationRequest locationRequest, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, locationRequest.DC);
        a.ik(parcel, 2, locationRequest.Dy);
        a.ik(parcel, 3, locationRequest.Dw);
        a.hO(parcel, 4, locationRequest.DD);
        a.ik(parcel, 5, locationRequest.Dz);
        a.hX(parcel, 6, locationRequest.Dx);
        a.ig(parcel, 7, locationRequest.DB);
        a.hX(parcel, 1000, locationRequest.Ht());
        a.ik(parcel, 8, locationRequest.Dv);
        a.hS(parcel, hm);
    }
    
    public LocationRequest createFromParcel(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        int ib2 = 102;
        long iz = 3600000L;
        long iz2 = 600000L;
        boolean il = false;
        long iz3 = Long.MAX_VALUE;
        int ib3 = -1 >>> 1;
        float ix2 = 0.0f;
        long iz4 = 0L;
        while (parcel.dataPosition() < ix) {
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
                    iz = b.iz(parcel, ig);
                    continue;
                }
                case 3: {
                    iz2 = b.iz(parcel, ig);
                    continue;
                }
                case 4: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 5: {
                    iz3 = b.iz(parcel, ig);
                    continue;
                }
                case 6: {
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
                case 7: {
                    ix2 = b.iX(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 8: {
                    iz4 = b.iz(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new LocationRequest(ib, ib2, iz, iz2, il, iz3, ib3, ix2, iz4);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public LocationRequest[] newArray(final int n) {
        return new LocationRequest[n];
    }
}
