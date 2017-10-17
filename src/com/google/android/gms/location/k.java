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
    static void Hp(final SleepSegmentEvent sleepSegmentEvent, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fw(parcel, 1, sleepSegmentEvent.Hj());
        a.fw(parcel, 2, sleepSegmentEvent.Hh());
        a.fj(parcel, 3, sleepSegmentEvent.Hg());
        a.fj(parcel, 1000, sleepSegmentEvent.Hi());
        a.fe(parcel, ey);
    }
    
    public SleepSegmentEvent Ho(final Parcel parcel) {
        long fl = 0L;
        int fn = 0;
        final int fj = b.fJ(parcel);
        long fl2 = fl;
        int fn2 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fl2 = b.fL(parcel, fs);
                    continue;
                }
                case 2: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
                case 3: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new SleepSegmentEvent(fn2, fl2, fl, fn);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public SleepSegmentEvent[] Hq(final int n) {
        return new SleepSegmentEvent[n];
    }
}
