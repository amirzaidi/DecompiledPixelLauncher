// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void DV(final PlaceRequest placeRequest, final Parcel parcel, final int n) {
        final int ey = com.google.android.gms.common.internal.safeparcel.a.eY(parcel);
        com.google.android.gms.common.internal.safeparcel.a.eW(parcel, 2, (Parcelable)placeRequest.EA(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.fw(parcel, 3, placeRequest.EB());
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 4, placeRequest.Ez());
        com.google.android.gms.common.internal.safeparcel.a.fw(parcel, 5, placeRequest.EC());
        com.google.android.gms.common.internal.safeparcel.a.fa(parcel, 6, placeRequest.Ey());
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 1000, placeRequest.Ah);
        com.google.android.gms.common.internal.safeparcel.a.fe(parcel, ey);
    }
    
    public PlaceRequest DT(final Parcel parcel) {
        boolean fx = false;
        final int fj = b.fJ(parcel);
        PlaceFilter placeFilter = null;
        long fl = -1;
        int fn = -1;
        long fl2 = Long.MAX_VALUE;
        int fn2 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 2: {
                    placeFilter = (PlaceFilter)b.fW(parcel, fs, (Parcelable$Creator)PlaceFilter.CREATOR);
                    continue;
                }
                case 3: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
                case 4: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 5: {
                    fl2 = b.fL(parcel, fs);
                    continue;
                }
                case 6: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new PlaceRequest(fn2, placeFilter, fl, fn, fl2, fx);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public PlaceRequest[] DU(final int n) {
        return new PlaceRequest[n];
    }
}
