// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.playlog.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void OZ(final PlayLoggerContext playLoggerContext, final Parcel parcel, final int n) {
        final int ey = com.google.android.gms.common.internal.safeparcel.a.eY(parcel);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 1, playLoggerContext.IG);
        com.google.android.gms.common.internal.safeparcel.a.fo(parcel, 2, playLoggerContext.packageName, false);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 3, playLoggerContext.IO);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 4, playLoggerContext.IL);
        com.google.android.gms.common.internal.safeparcel.a.fo(parcel, 5, playLoggerContext.IJ, false);
        com.google.android.gms.common.internal.safeparcel.a.fo(parcel, 6, playLoggerContext.IM, false);
        com.google.android.gms.common.internal.safeparcel.a.fa(parcel, 7, playLoggerContext.IK);
        com.google.android.gms.common.internal.safeparcel.a.fo(parcel, 8, playLoggerContext.IH, false);
        com.google.android.gms.common.internal.safeparcel.a.fa(parcel, 9, playLoggerContext.IN);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 10, playLoggerContext.II);
        com.google.android.gms.common.internal.safeparcel.a.fe(parcel, ey);
    }
    
    public PlayLoggerContext createFromParcel(final Parcel parcel) {
        String fq = null;
        int fn = 0;
        final int fj = b.fJ(parcel);
        boolean fx = true;
        boolean fx2 = false;
        String fq2 = null;
        String fq3 = null;
        int fn2 = 0;
        int fn3 = 0;
        String fq4 = null;
        int fn4 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn4 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fq4 = b.fQ(parcel, fs);
                    continue;
                }
                case 3: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 4: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 5: {
                    fq3 = b.fQ(parcel, fs);
                    continue;
                }
                case 6: {
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 7: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 8: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 9: {
                    fx2 = b.fX(parcel, fs);
                    continue;
                }
                case 10: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new PlayLoggerContext(fn4, fq4, fn3, fn2, fq3, fq2, fx, fq, fx2, fn);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public PlayLoggerContext[] newArray(final int n) {
        return new PlayLoggerContext[n];
    }
}
