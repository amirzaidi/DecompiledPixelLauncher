// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class k implements Parcelable$Creator
{
    static void Ii(final SleepSegmentEvent sleepSegmentEvent, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.ik(parcel, 1, sleepSegmentEvent.Ic());
        a.ik(parcel, 2, sleepSegmentEvent.Ia());
        a.hX(parcel, 3, sleepSegmentEvent.HZ());
        a.hX(parcel, 1000, sleepSegmentEvent.Ib());
        a.hS(parcel, hm);
    }
    
    public SleepSegmentEvent Ih(final Parcel parcel) {
        long iz = 0L;
        int ib = 0;
        final int ix = b.ix(parcel);
        long iz2 = iz;
        int ib2 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    iz2 = b.iz(parcel, ig);
                    continue;
                }
                case 2: {
                    iz = b.iz(parcel, ig);
                    continue;
                }
                case 3: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new SleepSegmentEvent(ib2, iz2, iz, ib);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public SleepSegmentEvent[] Ij(final int n) {
        return new SleepSegmentEvent[n];
    }
}
