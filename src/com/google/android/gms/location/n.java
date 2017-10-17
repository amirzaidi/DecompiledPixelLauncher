// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class n implements Parcelable$Creator
{
    static void HM(final LocationRequest locationRequest, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, locationRequest.BX);
        a.fw(parcel, 2, locationRequest.BT);
        a.fw(parcel, 3, locationRequest.BR);
        a.fa(parcel, 4, locationRequest.BY);
        a.fw(parcel, 5, locationRequest.BU);
        a.fj(parcel, 6, locationRequest.BS);
        a.fs(parcel, 7, locationRequest.BW);
        a.fj(parcel, 1000, locationRequest.GA());
        a.fw(parcel, 8, locationRequest.BQ);
        a.fe(parcel, ey);
    }
    
    public LocationRequest createFromParcel(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        int fn2 = 102;
        long fl = 3600000L;
        long fl2 = 600000L;
        boolean fx = false;
        long fl3 = Long.MAX_VALUE;
        int fn3 = -1 >>> 1;
        float gj = 0.0f;
        long fl4 = 0L;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
                case 3: {
                    fl2 = b.fL(parcel, fs);
                    continue;
                }
                case 4: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 5: {
                    fl3 = b.fL(parcel, fs);
                    continue;
                }
                case 6: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 7: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 8: {
                    fl4 = b.fL(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new LocationRequest(fn, fn2, fl, fl2, fx, fl3, fn3, gj, fl4);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public LocationRequest[] newArray(final int n) {
        return new LocationRequest[n];
    }
}
