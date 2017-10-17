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
    static void EG(final NearbyAlertRequest nearbyAlertRequest, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, nearbyAlertRequest.El());
        a.fj(parcel, 2, nearbyAlertRequest.Er());
        a.eW(parcel, 3, (Parcelable)nearbyAlertRequest.Ep(), n, false);
        a.eW(parcel, 4, (Parcelable)nearbyAlertRequest.Em(), n, false);
        a.fa(parcel, 5, nearbyAlertRequest.Eo());
        a.fj(parcel, 6, nearbyAlertRequest.Ek());
        a.fj(parcel, 7, nearbyAlertRequest.En());
        a.fj(parcel, 1000, nearbyAlertRequest.Eq());
        a.fe(parcel, ey);
    }
    
    public NearbyAlertRequest EH(final Parcel parcel) {
        NearbyAlertFilter nearbyAlertFilter = null;
        int fn = 0;
        final int fj = b.fJ(parcel);
        int fn2 = -1;
        int fn3 = 110;
        boolean fx = false;
        PlaceFilter placeFilter = null;
        int fn4 = 0;
        int fn5 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn4 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 3: {
                    placeFilter = (PlaceFilter)b.fW(parcel, fs, (Parcelable$Creator)PlaceFilter.CREATOR);
                    continue;
                }
                case 4: {
                    nearbyAlertFilter = (NearbyAlertFilter)b.fW(parcel, fs, (Parcelable$Creator)NearbyAlertFilter.CREATOR);
                    continue;
                }
                case 5: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 6: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 7: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn5 = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new NearbyAlertRequest(fn5, fn4, fn2, placeFilter, nearbyAlertFilter, fx, fn, fn3);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public NearbyAlertRequest[] EI(final int n) {
        return new NearbyAlertRequest[n];
    }
}
