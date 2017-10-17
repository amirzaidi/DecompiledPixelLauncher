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
    static void Hr(final GeofencingRequest geofencingRequest, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fc(parcel, 1, geofencingRequest.HY(), false);
        a.fj(parcel, 2, geofencingRequest.HX());
        a.fj(parcel, 1000, geofencingRequest.HZ());
        a.fe(parcel, ey);
    }
    
    public GeofencingRequest[] Hs(final int n) {
        return new GeofencingRequest[n];
    }
    
    public GeofencingRequest Ht(final Parcel parcel) {
        int fn = 0;
        final int fj = b.fJ(parcel);
        List fz = null;
        int fn2 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fz = b.fZ(parcel, fs, (Parcelable$Creator)ParcelableGeofence.CREATOR);
                    continue;
                }
                case 2: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new GeofencingRequest(fn2, fz, fn);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
