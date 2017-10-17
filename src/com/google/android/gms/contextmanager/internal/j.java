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
    static void NP(final TimeFilterImpl$Interval timeFilterImpl$Interval, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, timeFilterImpl$Interval.Ob());
        a.ik(parcel, 2, timeFilterImpl$Interval.Oc());
        a.ik(parcel, 3, timeFilterImpl$Interval.Oa());
        a.hS(parcel, hm);
    }
    
    public TimeFilterImpl$Interval NQ(final Parcel parcel) {
        long iz = 0L;
        final int ix = b.ix(parcel);
        int ib = 0;
        long iz2 = iz;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    iz2 = b.iz(parcel, ig);
                    continue;
                }
                case 3: {
                    iz = b.iz(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new TimeFilterImpl$Interval(ib, iz2, iz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public TimeFilterImpl$Interval[] NR(final int n) {
        return new TimeFilterImpl$Interval[n];
    }
}
