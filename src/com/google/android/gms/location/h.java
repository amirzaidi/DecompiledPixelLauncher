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
    static void Hf(final LocationAvailability locationAvailability, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, locationAvailability.BL);
        a.fj(parcel, 2, locationAvailability.BN);
        a.fw(parcel, 3, locationAvailability.BO);
        a.fj(parcel, 4, locationAvailability.BP);
        a.fj(parcel, 1000, locationAvailability.Gy());
        a.fe(parcel, ey);
    }
    
    public LocationAvailability createFromParcel(final Parcel parcel) {
        int fn = 1;
        final int fj = b.fJ(parcel);
        int fn2 = 0;
        int fn3 = 1000;
        long fl = 0L;
        int fn4 = fn;
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
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 3: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
                case 4: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new LocationAvailability(fn2, fn3, fn4, fn, fl);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public LocationAvailability[] newArray(final int n) {
        return new LocationAvailability[n];
    }
}
