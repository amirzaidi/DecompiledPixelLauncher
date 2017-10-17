// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.stats;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class c implements Parcelable$Creator
{
    static void mf(final WakeLockEvent wakeLockEvent, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, wakeLockEvent.iC);
        a.fw(parcel, 2, wakeLockEvent.lI());
        a.fo(parcel, 4, wakeLockEvent.lD(), false);
        a.fj(parcel, 5, wakeLockEvent.lC());
        a.fr(parcel, 6, wakeLockEvent.lH(), false);
        a.fw(parcel, 8, wakeLockEvent.lP());
        a.fo(parcel, 10, wakeLockEvent.lO(), false);
        a.fj(parcel, 11, wakeLockEvent.lJ());
        a.fo(parcel, 12, wakeLockEvent.lL(), false);
        a.fo(parcel, 13, wakeLockEvent.lM(), false);
        a.fj(parcel, 14, wakeLockEvent.lB());
        a.fs(parcel, 15, wakeLockEvent.lG());
        a.fw(parcel, 16, wakeLockEvent.lF());
        a.fo(parcel, 17, wakeLockEvent.lK(), false);
        a.fe(parcel, ey);
    }
    
    public WakeLockEvent mg(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        long fl = 0L;
        int fn2 = 0;
        String fq = null;
        int fn3 = 0;
        List fr = null;
        String fq2 = null;
        long fl2 = 0L;
        int fn4 = 0;
        String fq3 = null;
        String fq4 = null;
        float gj = 0.0f;
        long fl3 = 0L;
        String fq5 = null;
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
                    fl = b.fL(parcel, fs);
                    continue;
                }
                case 4: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 5: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 6: {
                    fr = b.fR(parcel, fs);
                    continue;
                }
                case 8: {
                    fl2 = b.fL(parcel, fs);
                    continue;
                }
                case 10: {
                    fq3 = b.fQ(parcel, fs);
                    continue;
                }
                case 11: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 12: {
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 13: {
                    fq4 = b.fQ(parcel, fs);
                    continue;
                }
                case 14: {
                    fn4 = b.fN(parcel, fs);
                    continue;
                }
                case 15: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
                case 16: {
                    fl3 = b.fL(parcel, fs);
                    continue;
                }
                case 17: {
                    fq5 = b.fQ(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new WakeLockEvent(fn, fl, fn2, fq, fn3, fr, fq2, fl2, fn4, fq3, fq4, gj, fl3, fq5);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public WakeLockEvent[] mh(final int n) {
        return new WakeLockEvent[n];
    }
}
