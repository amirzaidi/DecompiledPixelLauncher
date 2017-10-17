// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class o implements Parcelable$Creator
{
    static void HO(final WifiScan wifiScan, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fw(parcel, 1, wifiScan.HT());
        a.eV(parcel, 2, wifiScan.Dj, false);
        a.fj(parcel, 1000, wifiScan.HV());
        a.fe(parcel, ey);
    }
    
    public WifiScan[] HN(final int n) {
        return new WifiScan[n];
    }
    
    public WifiScan HP(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        long fl = 0L;
        long[] array = WifiScan.Dk;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
                case 2: {
                    array = b.fT(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new WifiScan(fn, fl, array);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
