// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class v implements Parcelable$Creator
{
    static void py(final Flag flag, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, flag.lc);
        a.fo(parcel, 2, flag.name, false);
        a.fw(parcel, 3, flag.le);
        a.fa(parcel, 4, flag.lf);
        a.fq(parcel, 5, flag.kY);
        a.fo(parcel, 6, flag.kW, false);
        a.fv(parcel, 7, flag.lb, false);
        a.fj(parcel, 8, flag.ld);
        a.fj(parcel, 9, flag.kZ);
        a.fe(parcel, ey);
    }
    
    public Flag px(final Parcel parcel) {
        byte[] gf = null;
        int fn = 0;
        final int fj = b.fJ(parcel);
        long fl = 0L;
        double gb = 0.0;
        int fn2 = 0;
        String fq = null;
        boolean fx = false;
        String fq2 = null;
        int fn3 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 3: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
                case 4: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 5: {
                    gb = b.gb(parcel, fs);
                    continue;
                }
                case 6: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 7: {
                    gf = b.gf(parcel, fs);
                    continue;
                }
                case 8: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 9: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new Flag(fn3, fq2, fl, fx, gb, fq, gf, fn2, fn);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public Flag[] pz(final int n) {
        return new Flag[n];
    }
}
