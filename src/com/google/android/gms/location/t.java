// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.location.Location;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class t implements Parcelable$Creator
{
    static void Ja(final LocationResult locationResult, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hQ(parcel, 1, locationResult.HW(), false);
        a.hX(parcel, 1000, locationResult.HX());
        a.hS(parcel, hm);
    }
    
    public LocationResult[] IZ(final int n) {
        return new LocationResult[n];
    }
    
    public LocationResult Jb(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        List list = LocationResult.Eo;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    list = b.iN(parcel, ig, Location.CREATOR);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new LocationResult(ib, list);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
