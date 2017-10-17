// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import java.util.ArrayList;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class g implements Parcelable$Creator
{
    static void NA(final TimeFilterImpl timeFilterImpl, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, timeFilterImpl.NI());
        a.hQ(parcel, 2, timeFilterImpl.NG(), false);
        a.ib(parcel, 3, timeFilterImpl.NH(), false);
        a.hS(parcel, hm);
    }
    
    public TimeFilterImpl Ny(final Parcel parcel) {
        int[] iy = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        ArrayList in = null;
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
                    in = b.iN(parcel, ig, TimeFilterImpl$Interval.CREATOR);
                    continue;
                }
                case 3: {
                    iy = b.iy(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new TimeFilterImpl(ib, in, iy);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public TimeFilterImpl[] Nz(final int n) {
        return new TimeFilterImpl[n];
    }
}
