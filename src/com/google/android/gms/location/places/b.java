// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void ET(final NearbyAlertFilter nearbyAlertFilter, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.if(parcel, 1, nearbyAlertFilter.Bp, false);
        a.hP(parcel, 2, nearbyAlertFilter.Bn, false);
        a.hQ(parcel, 3, nearbyAlertFilter.Bt, false);
        a.ic(parcel, 4, nearbyAlertFilter.Bs, false);
        a.hO(parcel, 5, nearbyAlertFilter.Bu);
        a.hX(parcel, 1000, nearbyAlertFilter.Br);
        a.hS(parcel, hm);
    }
    
    public NearbyAlertFilter ES(final Parcel parcel) {
        boolean il = false;
        String ie = null;
        final int ix = com.google.android.gms.common.internal.safeparcel.b.ix(parcel);
        List in = null;
        List iv = null;
        List if1 = null;
        int ib = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = com.google.android.gms.common.internal.safeparcel.b.iG(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.iO(ig)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    if1 = com.google.android.gms.common.internal.safeparcel.b.iF(parcel, ig);
                    continue;
                }
                case 2: {
                    iv = com.google.android.gms.common.internal.safeparcel.b.iv(parcel, ig);
                    continue;
                }
                case 3: {
                    in = com.google.android.gms.common.internal.safeparcel.b.iN(parcel, ig, (Parcelable$Creator)UserDataType.CREATOR);
                    continue;
                }
                case 4: {
                    ie = com.google.android.gms.common.internal.safeparcel.b.iE(parcel, ig);
                    continue;
                }
                case 5: {
                    il = com.google.android.gms.common.internal.safeparcel.b.iL(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = com.google.android.gms.common.internal.safeparcel.b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new NearbyAlertFilter(ib, if1, iv, in, ie, il);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public NearbyAlertFilter[] EU(final int n) {
        return new NearbyAlertFilter[n];
    }
}
