// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.clearcut;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class i implements Parcelable$Creator
{
    static void LL(final LogEventParcelable logEventParcelable, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, logEventParcelable.GH);
        a.eW(parcel, 2, (Parcelable)logEventParcelable.GQ, n, false);
        a.fv(parcel, 3, logEventParcelable.GK, false);
        a.fn(parcel, 4, logEventParcelable.GL, false);
        a.fk(parcel, 5, logEventParcelable.GI, false);
        a.fn(parcel, 6, logEventParcelable.GO, false);
        a.fd(parcel, 7, logEventParcelable.GP, false);
        a.fa(parcel, 8, logEventParcelable.GN);
        a.fe(parcel, ey);
    }
    
    public LogEventParcelable createFromParcel(final Parcel parcel) {
        byte[][] fb = null;
        final int fj = b.fJ(parcel);
        int fn = 0;
        boolean fx = true;
        int[] fk = null;
        String[] fu = null;
        int[] fk2 = null;
        byte[] gf = null;
        PlayLoggerContext playLoggerContext = null;
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
                    playLoggerContext = (PlayLoggerContext)b.fW(parcel, fs, (Parcelable$Creator)PlayLoggerContext.CREATOR);
                    continue;
                }
                case 3: {
                    gf = b.gf(parcel, fs);
                    continue;
                }
                case 4: {
                    fk2 = b.fK(parcel, fs);
                    continue;
                }
                case 5: {
                    fu = b.fU(parcel, fs);
                    continue;
                }
                case 6: {
                    fk = b.fK(parcel, fs);
                    continue;
                }
                case 7: {
                    fb = b.fB(parcel, fs);
                    continue;
                }
                case 8: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new LogEventParcelable(fn, playLoggerContext, gf, fk2, fu, fk, fb, fx);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public LogEventParcelable[] newArray(final int n) {
        return new LogEventParcelable[n];
    }
}
