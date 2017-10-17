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

public class m implements Parcelable$Creator
{
    static void Dh(final Configuration configuration, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, configuration.xU);
        a.hX(parcel, 2, configuration.xS);
        a.id(parcel, 3, (Parcelable[])configuration.xT, n, false);
        a.hY(parcel, 4, configuration.xV, false);
        a.hS(parcel, hm);
    }
    
    public Configuration Di(final Parcel parcel) {
        Flag[] array = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        int ib2 = 0;
        String[] ii = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    break;
                }
                case 1: {
                    ib2 = b.iB(parcel, ig);
                    break;
                }
                case 2: {
                    ib = b.iB(parcel, ig);
                    break;
                }
                case 3: {
                    array = (Flag[])b.iA(parcel, ig, Flag.CREATOR);
                    break;
                }
                case 4: {
                    ii = b.iI(parcel, ig);
                    break;
                }
            }
            final String[] array2 = ii;
            array = array;
            ii = array2;
        }
        if (parcel.dataPosition() == ix) {
            return new Configuration(ib2, ib, array, ii);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public Configuration[] Dj(final int n) {
        return new Configuration[n];
    }
}
