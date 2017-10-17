// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class q implements Parcelable$Creator
{
    static void pr(final ExperimentTokens experimentTokens, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, experimentTokens.lm);
        a.fo(parcel, 2, experimentTokens.lw, false);
        a.fv(parcel, 3, experimentTokens.lq, false);
        a.fd(parcel, 4, experimentTokens.lx, false);
        a.fd(parcel, 5, experimentTokens.lv, false);
        a.fd(parcel, 6, experimentTokens.lr, false);
        a.fd(parcel, 7, experimentTokens.ll, false);
        a.fn(parcel, 8, experimentTokens.ln, false);
        a.fd(parcel, 9, experimentTokens.li, false);
        a.fe(parcel, ey);
    }
    
    public ExperimentTokens[] pq(final int n) {
        return new ExperimentTokens[n];
    }
    
    public ExperimentTokens ps(final Parcel parcel) {
        byte[][] fb = null;
        final int fj = b.fJ(parcel);
        int fn = 0;
        int[] fk = null;
        byte[][] fb2 = null;
        byte[][] fb3 = null;
        byte[][] fb4 = null;
        byte[][] fb5 = null;
        byte[] gf = null;
        String fq = null;
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
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 3: {
                    gf = b.gf(parcel, fs);
                    continue;
                }
                case 4: {
                    fb5 = b.fB(parcel, fs);
                    continue;
                }
                case 5: {
                    fb4 = b.fB(parcel, fs);
                    continue;
                }
                case 6: {
                    fb3 = b.fB(parcel, fs);
                    continue;
                }
                case 7: {
                    fb2 = b.fB(parcel, fs);
                    continue;
                }
                case 8: {
                    fk = b.fK(parcel, fs);
                    continue;
                }
                case 9: {
                    fb = b.fB(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new ExperimentTokens(fn, fq, gf, fb5, fb4, fb3, fb2, fk, fb);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
