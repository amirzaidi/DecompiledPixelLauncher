// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class r implements Parcelable$Creator
{
    static void pu(final Configurations configurations, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, configurations.lE);
        a.fo(parcel, 2, configurations.ly, false);
        a.fo(parcel, 3, configurations.lC, false);
        a.fp(parcel, 4, (Parcelable[])configurations.lA, n, false);
        a.fa(parcel, 5, configurations.lD);
        a.fe(parcel, ey);
    }
    
    public Configurations pt(final Parcel parcel) {
        boolean fx = false;
        Configuration[] array = null;
        final int fj = b.fJ(parcel);
        String fq = null;
        String fq2 = null;
        int fn = 0;
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
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 3: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 4: {
                    array = (Configuration[])b.fM(parcel, fs, Configuration.CREATOR);
                    continue;
                }
                case 5: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new Configurations(fn, fq2, fq, array, fx);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public Configurations[] pv(final int n) {
        return new Configurations[n];
    }
}
