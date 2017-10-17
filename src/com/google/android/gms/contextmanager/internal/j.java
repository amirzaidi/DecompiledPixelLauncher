// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class j implements Parcelable$Creator
{
    static void MW(final TimeFilterImpl$Interval timeFilterImpl$Interval, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, timeFilterImpl$Interval.Ni());
        a.fw(parcel, 2, timeFilterImpl$Interval.Nj());
        a.fw(parcel, 3, timeFilterImpl$Interval.Nh());
        a.fe(parcel, ey);
    }
    
    public TimeFilterImpl$Interval MX(final Parcel parcel) {
        long fl = 0L;
        final int fj = b.fJ(parcel);
        int fn = 0;
        long fl2 = fl;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fl2 = b.fL(parcel, fs);
                    continue;
                }
                case 3: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new TimeFilterImpl$Interval(fn, fl2, fl);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public TimeFilterImpl$Interval[] MY(final int n) {
        return new TimeFilterImpl$Interval[n];
    }
}
