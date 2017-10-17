// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.playlog.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void PU(final LogEvent logEvent, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, logEvent.Ku);
        a.ik(parcel, 2, logEvent.Kv);
        a.ic(parcel, 3, logEvent.Kz, false);
        a.ij(parcel, 4, logEvent.Kx, false);
        a.hH(parcel, 5, logEvent.Ky, false);
        a.ik(parcel, 6, logEvent.Kw);
        a.hS(parcel, hm);
    }
    
    public LogEvent[] PT(final int n) {
        return new LogEvent[n];
    }
    
    public LogEvent PV(final Parcel parcel) {
        long iz = 0L;
        Bundle id = null;
        final int ix = com.google.android.gms.common.internal.safeparcel.b.ix(parcel);
        int ib = 0;
        byte[] it = null;
        String ie = null;
        long iz2 = iz;
        while (parcel.dataPosition() < ix) {
            final int ig = com.google.android.gms.common.internal.safeparcel.b.iG(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.iO(ig)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib = com.google.android.gms.common.internal.safeparcel.b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    iz2 = com.google.android.gms.common.internal.safeparcel.b.iz(parcel, ig);
                    continue;
                }
                case 3: {
                    ie = com.google.android.gms.common.internal.safeparcel.b.iE(parcel, ig);
                    continue;
                }
                case 4: {
                    it = com.google.android.gms.common.internal.safeparcel.b.iT(parcel, ig);
                    continue;
                }
                case 5: {
                    id = com.google.android.gms.common.internal.safeparcel.b.iD(parcel, ig);
                    continue;
                }
                case 6: {
                    iz = com.google.android.gms.common.internal.safeparcel.b.iz(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new LogEvent(ib, iz2, iz, ie, it, id);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
