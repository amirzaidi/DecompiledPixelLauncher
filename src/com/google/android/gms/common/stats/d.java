// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class d implements Parcelable$Creator
{
    static void ms(final ConnectionEvent connectionEvent, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, connectionEvent.jh);
        a.fw(parcel, 2, connectionEvent.lI());
        a.fo(parcel, 4, connectionEvent.mi(), false);
        a.fo(parcel, 5, connectionEvent.mm(), false);
        a.fo(parcel, 6, connectionEvent.mo(), false);
        a.fo(parcel, 7, connectionEvent.mj(), false);
        a.fo(parcel, 8, connectionEvent.mk(), false);
        a.fw(parcel, 10, connectionEvent.mp());
        a.fw(parcel, 11, connectionEvent.ml());
        a.fj(parcel, 12, connectionEvent.lJ());
        a.fo(parcel, 13, connectionEvent.mn(), false);
        a.fe(parcel, ey);
    }
    
    public ConnectionEvent[] mq(final int n) {
        return new ConnectionEvent[n];
    }
    
    public ConnectionEvent mr(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        long fl = 0L;
        int fn2 = 0;
        String fq = null;
        String fq2 = null;
        String fq3 = null;
        String fq4 = null;
        String fq5 = null;
        String fq6 = null;
        long fl2 = 0L;
        long fl3 = 0L;
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
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 6: {
                    fq3 = b.fQ(parcel, fs);
                    continue;
                }
                case 7: {
                    fq4 = b.fQ(parcel, fs);
                    continue;
                }
                case 8: {
                    fq5 = b.fQ(parcel, fs);
                    continue;
                }
                case 10: {
                    fl2 = b.fL(parcel, fs);
                    continue;
                }
                case 11: {
                    fl3 = b.fL(parcel, fs);
                    continue;
                }
                case 12: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 13: {
                    fq6 = b.fQ(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new ConnectionEvent(fn, fl, fn2, fq, fq2, fq3, fq4, fq5, fq6, fl2, fl3);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
