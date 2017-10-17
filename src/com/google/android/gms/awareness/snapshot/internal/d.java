// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class d implements Parcelable$Creator
{
    static void eL(final DayAttributesImpl dayAttributesImpl, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, dayAttributesImpl.eA());
        a.ib(parcel, 2, dayAttributesImpl.ez(), false);
        a.hS(parcel, hm);
    }
    
    public DayAttributesImpl eK(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        int[] iy = null;
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
                    iy = b.iy(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new DayAttributesImpl(ib, iy);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public DayAttributesImpl[] eM(final int n) {
        return new DayAttributesImpl[n];
    }
}
