// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class u implements Parcelable$Creator
{
    static void Jc(final FloorChangeEvent floorChangeEvent, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, floorChangeEvent.Jh());
        a.hX(parcel, 2, floorChangeEvent.Jf());
        a.ik(parcel, 3, floorChangeEvent.Jj());
        a.ik(parcel, 4, floorChangeEvent.Ji());
        a.ik(parcel, 5, floorChangeEvent.Jg());
        a.ik(parcel, 6, floorChangeEvent.Jl());
        a.ig(parcel, 7, floorChangeEvent.Je());
        a.hX(parcel, 1000, floorChangeEvent.Jk());
        a.hS(parcel, hm);
    }
    
    public FloorChangeEvent createFromParcel(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        int ib2 = 0;
        int ib3 = 0;
        long iz = 0L;
        long iz2 = 0L;
        long iz3 = 0L;
        long iz4 = 0L;
        float ix2 = 0.0f;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
                case 3: {
                    iz = b.iz(parcel, ig);
                    continue;
                }
                case 4: {
                    iz2 = b.iz(parcel, ig);
                    continue;
                }
                case 5: {
                    iz3 = b.iz(parcel, ig);
                    continue;
                }
                case 6: {
                    iz4 = b.iz(parcel, ig);
                    continue;
                }
                case 7: {
                    ix2 = b.iX(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new FloorChangeEvent(ib, ib2, ib3, iz, iz2, iz3, iz4, ix2);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public FloorChangeEvent[] newArray(final int n) {
        return new FloorChangeEvent[n];
    }
}
