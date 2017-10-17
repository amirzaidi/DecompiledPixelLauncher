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
    static void Dx(final Flag flag, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, flag.yG);
        a.ic(parcel, 2, flag.name, false);
        a.ik(parcel, 3, flag.yI);
        a.hO(parcel, 4, flag.yJ);
        a.ie(parcel, 5, flag.yC);
        a.ic(parcel, 6, flag.yA, false);
        a.ij(parcel, 7, flag.yF, false);
        a.hX(parcel, 8, flag.yH);
        a.hX(parcel, 9, flag.yD);
        a.hS(parcel, hm);
    }
    
    public Flag Dw(final Parcel parcel) {
        byte[] it = null;
        int ib = 0;
        final int ix = b.ix(parcel);
        long iz = 0L;
        double ip = 0.0;
        int ib2 = 0;
        String ie = null;
        boolean il = false;
        String ie2 = null;
        int ib3 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 3: {
                    iz = b.iz(parcel, ig);
                    continue;
                }
                case 4: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 5: {
                    ip = b.iP(parcel, ig);
                    continue;
                }
                case 6: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 7: {
                    it = b.iT(parcel, ig);
                    continue;
                }
                case 8: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 9: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new Flag(ib3, ie2, iz, il, ip, ie, it, ib2, ib);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public Flag[] Dy(final int n) {
        return new Flag[n];
    }
}
