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
    static void Ih(final LocationResult locationResult, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fc(parcel, 1, locationResult.Hd(), false);
        a.fj(parcel, 1000, locationResult.He());
        a.fe(parcel, ey);
    }
    
    public LocationResult[] Ig(final int n) {
        return new LocationResult[n];
    }
    
    public LocationResult Ii(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        List list = LocationResult.CJ;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    list = b.fZ(parcel, fs, Location.CREATOR);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new LocationResult(fn, list);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
