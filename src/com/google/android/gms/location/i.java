// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class i implements Parcelable$Creator
{
    static void If(final LocationSettingsResult locationSettingsResult, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hK(parcel, 1, (Parcelable)locationSettingsResult.gV(), n, false);
        a.hK(parcel, 2, (Parcelable)locationSettingsResult.In(), n, false);
        a.hX(parcel, 1000, locationSettingsResult.Io());
        a.hS(parcel, hm);
    }
    
    public LocationSettingsResult[] Id(final int n) {
        return new LocationSettingsResult[n];
    }
    
    public LocationSettingsResult Ie(final Parcel parcel) {
        final int ix = b.ix(parcel);
        Status status = null;
        int ib = 0;
        LocationSettingsStates locationSettingsStates = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            int n = 0;
            LocationSettingsStates locationSettingsStates2 = null;
            Status status4 = null;
            Label_0124: {
                switch (b.iO(ig)) {
                    default: {
                        b.io(parcel, ig);
                        break;
                    }
                    case 1: {
                        final Status status2 = (Status)b.iK(parcel, ig, Status.CREATOR);
                        n = ib;
                        final Status status3 = status2;
                        locationSettingsStates2 = locationSettingsStates;
                        status4 = status3;
                        break Label_0124;
                    }
                    case 2: {
                        locationSettingsStates2 = (LocationSettingsStates)b.iK(parcel, ig, LocationSettingsStates.CREATOR);
                        status4 = status;
                        n = ib;
                        break Label_0124;
                    }
                    case 1000: {
                        ib = b.iB(parcel, ig);
                        break;
                    }
                }
                locationSettingsStates2 = locationSettingsStates;
                status4 = status;
                n = ib;
            }
            ib = n;
            status = status4;
            locationSettingsStates = locationSettingsStates2;
        }
        if (parcel.dataPosition() == ix) {
            return new LocationSettingsResult(ib, status, locationSettingsStates);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
