// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class p implements Parcelable$Creator
{
    static void Dl(final ExperimentTokens experimentTokens, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, experimentTokens.yV);
        a.ic(parcel, 2, experimentTokens.zf, false);
        a.ij(parcel, 3, experimentTokens.yZ, false);
        a.hR(parcel, 4, experimentTokens.zg, false);
        a.hR(parcel, 5, experimentTokens.ze, false);
        a.hR(parcel, 6, experimentTokens.za, false);
        a.hR(parcel, 7, experimentTokens.yU, false);
        a.ib(parcel, 8, experimentTokens.yW, false);
        a.hR(parcel, 9, experimentTokens.yR, false);
        a.hS(parcel, hm);
    }
    
    public ExperimentTokens[] Dk(final int n) {
        return new ExperimentTokens[n];
    }
    
    public ExperimentTokens Dm(final Parcel parcel) {
        byte[][] ip = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        int[] iy = null;
        byte[][] ip2 = null;
        byte[][] ip3 = null;
        byte[][] ip4 = null;
        byte[][] ip5 = null;
        byte[] it = null;
        String ie = null;
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
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 3: {
                    it = b.iT(parcel, ig);
                    continue;
                }
                case 4: {
                    ip5 = b.ip(parcel, ig);
                    continue;
                }
                case 5: {
                    ip4 = b.ip(parcel, ig);
                    continue;
                }
                case 6: {
                    ip3 = b.ip(parcel, ig);
                    continue;
                }
                case 7: {
                    ip2 = b.ip(parcel, ig);
                    continue;
                }
                case 8: {
                    iy = b.iy(parcel, ig);
                    continue;
                }
                case 9: {
                    ip = b.ip(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new ExperimentTokens(ib, ie, it, ip5, ip4, ip3, ip2, iy, ip);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
