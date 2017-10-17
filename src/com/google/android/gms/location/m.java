// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class m implements Parcelable$Creator
{
    static void HC(final LocationSettingsRequest locationSettingsRequest, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fc(parcel, 1, locationSettingsRequest.Hy(), false);
        a.fa(parcel, 2, locationSettingsRequest.Hw());
        a.fa(parcel, 3, locationSettingsRequest.Hx());
        a.fj(parcel, 1000, locationSettingsRequest.Hz());
        a.fe(parcel, ey);
    }
    
    public LocationSettingsRequest HD(final Parcel parcel) {
        boolean fx = false;
        final int fj = b.fJ(parcel);
        List fz = null;
        int fn = 0;
        boolean fx2 = false;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fz = b.fZ(parcel, fs, (Parcelable$Creator)LocationRequest.CREATOR);
                    continue;
                }
                case 2: {
                    fx2 = b.fX(parcel, fs);
                    continue;
                }
                case 3: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new LocationSettingsRequest(fn, fz, fx2, fx);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public LocationSettingsRequest[] HE(final int n) {
        return new LocationSettingsRequest[n];
    }
}
