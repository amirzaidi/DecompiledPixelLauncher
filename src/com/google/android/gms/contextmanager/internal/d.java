// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class d implements Parcelable$Creator
{
    static void Nb(final KeyFilterImpl$Inclusion keyFilterImpl$Inclusion, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, keyFilterImpl$Inclusion.MI());
        a.hY(parcel, 2, keyFilterImpl$Inclusion.MH(), false);
        a.hY(parcel, 3, keyFilterImpl$Inclusion.MF(), false);
        a.hY(parcel, 4, keyFilterImpl$Inclusion.MG(), false);
        a.hS(parcel, hm);
    }
    
    public KeyFilterImpl$Inclusion[] Na(final int n) {
        return new KeyFilterImpl$Inclusion[n];
    }
    
    public KeyFilterImpl$Inclusion Nc(final Parcel parcel) {
        String[] ii = null;
        final int ix = b.ix(parcel);
        String[] ii2 = null;
        int ib = 0;
        String[] ii3 = null;
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
                    ii2 = b.iI(parcel, ig);
                    continue;
                }
                case 3: {
                    ii3 = b.iI(parcel, ig);
                    continue;
                }
                case 4: {
                    ii = b.iI(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new KeyFilterImpl$Inclusion(ib, ii2, ii3, ii);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
