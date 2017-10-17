// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class e implements Parcelable$Creator
{
    static void GM(final LocationSettingsStates locationSettingsStates, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fa(parcel, 1, locationSettingsStates.HI());
        a.fa(parcel, 2, locationSettingsStates.HG());
        a.fa(parcel, 3, locationSettingsStates.HK());
        a.fa(parcel, 4, locationSettingsStates.HF());
        a.fa(parcel, 5, locationSettingsStates.HJ());
        a.fa(parcel, 6, locationSettingsStates.HL());
        a.fj(parcel, 1000, locationSettingsStates.HH());
        a.fe(parcel, ey);
    }
    
    public LocationSettingsStates GL(final Parcel parcel) {
        boolean fx = false;
        final int fj = b.fJ(parcel);
        boolean fx2 = false;
        boolean fx3 = false;
        boolean fx4 = false;
        boolean fx5 = false;
        boolean fx6 = false;
        int fn = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fx6 = b.fX(parcel, fs);
                    continue;
                }
                case 2: {
                    fx5 = b.fX(parcel, fs);
                    continue;
                }
                case 3: {
                    fx4 = b.fX(parcel, fs);
                    continue;
                }
                case 4: {
                    fx3 = b.fX(parcel, fs);
                    continue;
                }
                case 5: {
                    fx2 = b.fX(parcel, fs);
                    continue;
                }
                case 6: {
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
            return new LocationSettingsStates(fn, fx6, fx5, fx4, fx3, fx2, fx);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public LocationSettingsStates[] GN(final int n) {
        return new LocationSettingsStates[n];
    }
}
