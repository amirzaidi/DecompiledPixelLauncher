// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class n implements Parcelable$Creator
{
    static void FJ(final ParcelableGeofence parcelableGeofence, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fo(parcel, 1, parcelableGeofence.Fr(), false);
        a.fw(parcel, 2, parcelableGeofence.FA());
        a.eU(parcel, 3, parcelableGeofence.Fu());
        a.fq(parcel, 4, parcelableGeofence.Ft());
        a.fq(parcel, 5, parcelableGeofence.Fp());
        a.fs(parcel, 6, parcelableGeofence.getRadius());
        a.fj(parcel, 7, parcelableGeofence.Fw());
        a.fj(parcel, 1000, parcelableGeofence.FC());
        a.fj(parcel, 8, parcelableGeofence.Fy());
        a.fj(parcel, 9, parcelableGeofence.FB());
        a.fe(parcel, ey);
    }
    
    public ParcelableGeofence FH(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        String fq = null;
        int fn2 = 0;
        short fy = 0;
        double gb = 0.0;
        double gb2 = 0.0;
        float gj = 0.0f;
        long fl = 0L;
        int fn3 = 0;
        int fn4 = -1;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 2: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
                case 3: {
                    fy = b.fy(parcel, fs);
                    continue;
                }
                case 4: {
                    gb = b.gb(parcel, fs);
                    continue;
                }
                case 5: {
                    gb2 = b.gb(parcel, fs);
                    continue;
                }
                case 6: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
                case 7: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 8: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 9: {
                    fn4 = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new ParcelableGeofence(fn, fq, fn2, fy, gb, gb2, gj, fl, fn3, fn4);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public ParcelableGeofence[] FI(final int n) {
        return new ParcelableGeofence[n];
    }
}
