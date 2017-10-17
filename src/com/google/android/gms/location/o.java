// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class o implements Parcelable$Creator
{
    static void IH(final WifiScan wifiScan, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.ik(parcel, 1, wifiScan.IM());
        a.hJ(parcel, 2, wifiScan.EO, false);
        a.hX(parcel, 1000, wifiScan.IO());
        a.hS(parcel, hm);
    }
    
    public WifiScan[] IG(final int n) {
        return new WifiScan[n];
    }
    
    public WifiScan II(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        long iz = 0L;
        long[] array = WifiScan.EP;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    iz = b.iz(parcel, ig);
                    continue;
                }
                case 2: {
                    array = b.iH(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new WifiScan(ib, iz, array);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
