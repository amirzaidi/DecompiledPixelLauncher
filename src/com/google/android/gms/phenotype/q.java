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

public class q implements Parcelable$Creator
{
    static void Do(final Configurations configurations, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, configurations.yd);
        a.ic(parcel, 2, configurations.xX, false);
        a.ic(parcel, 3, configurations.yb, false);
        a.id(parcel, 4, (Parcelable[])configurations.xZ, n, false);
        a.hO(parcel, 5, configurations.yc);
        a.hS(parcel, hm);
    }
    
    public Configurations Dn(final Parcel parcel) {
        boolean il = false;
        Configuration[] array = null;
        final int ix = b.ix(parcel);
        String ie = null;
        String ie2 = null;
        int ib = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 3: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 4: {
                    array = (Configuration[])b.iA(parcel, ig, Configuration.CREATOR);
                    continue;
                }
                case 5: {
                    il = b.iL(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new Configurations(ib, ie2, ie, array, il);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public Configurations[] Dp(final int n) {
        return new Configurations[n];
    }
}
