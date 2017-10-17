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

public class n implements Parcelable$Creator
{
    static void pn(final Configuration configuration, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, configuration.lM);
        a.fj(parcel, 2, configuration.lK);
        a.fp(parcel, 3, (Parcelable[])configuration.lL, n, false);
        a.fk(parcel, 4, configuration.lN, false);
        a.fe(parcel, ey);
    }
    
    public Configuration po(final Parcel parcel) {
        Flag[] array = null;
        final int fj = b.fJ(parcel);
        int fn = 0;
        int fn2 = 0;
        String[] fu = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    break;
                }
                case 1: {
                    fn2 = b.fN(parcel, fs);
                    break;
                }
                case 2: {
                    fn = b.fN(parcel, fs);
                    break;
                }
                case 3: {
                    array = (Flag[])b.fM(parcel, fs, Flag.CREATOR);
                    break;
                }
                case 4: {
                    fu = b.fU(parcel, fs);
                    break;
                }
            }
            final String[] array2 = fu;
            array = array;
            fu = array2;
        }
        if (parcel.dataPosition() == fj) {
            return new Configuration(fn2, fn, array, fu);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public Configuration[] pp(final int n) {
        return new Configuration[n];
    }
}
