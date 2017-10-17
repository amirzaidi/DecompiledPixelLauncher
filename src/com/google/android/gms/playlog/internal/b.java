// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.playlog.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void Pb(final LogEvent logEvent, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, logEvent.IP);
        a.fw(parcel, 2, logEvent.IQ);
        a.fo(parcel, 3, logEvent.IU, false);
        a.fv(parcel, 4, logEvent.IS, false);
        a.eT(parcel, 5, logEvent.IT, false);
        a.fw(parcel, 6, logEvent.IR);
        a.fe(parcel, ey);
    }
    
    public LogEvent[] Pa(final int n) {
        return new LogEvent[n];
    }
    
    public LogEvent Pc(final Parcel parcel) {
        long fl = 0L;
        Bundle fp = null;
        final int fj = com.google.android.gms.common.internal.safeparcel.b.fJ(parcel);
        int fn = 0;
        byte[] gf = null;
        String fq = null;
        long fl2 = fl;
        while (parcel.dataPosition() < fj) {
            final int fs = com.google.android.gms.common.internal.safeparcel.b.fS(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.ga(fs)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = com.google.android.gms.common.internal.safeparcel.b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fl2 = com.google.android.gms.common.internal.safeparcel.b.fL(parcel, fs);
                    continue;
                }
                case 3: {
                    fq = com.google.android.gms.common.internal.safeparcel.b.fQ(parcel, fs);
                    continue;
                }
                case 4: {
                    gf = com.google.android.gms.common.internal.safeparcel.b.gf(parcel, fs);
                    continue;
                }
                case 5: {
                    fp = com.google.android.gms.common.internal.safeparcel.b.fP(parcel, fs);
                    continue;
                }
                case 6: {
                    fl = com.google.android.gms.common.internal.safeparcel.b.fL(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new LogEvent(fn, fl2, fl, fq, gf, fp);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
