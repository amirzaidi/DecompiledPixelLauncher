// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class e implements Parcelable$Creator
{
    static void pg(final ConnectionEvent connectionEvent, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, connectionEvent.lZ);
        a.ik(parcel, 2, connectionEvent.ow());
        a.ic(parcel, 4, connectionEvent.oW(), false);
        a.ic(parcel, 5, connectionEvent.pa(), false);
        a.ic(parcel, 6, connectionEvent.pc(), false);
        a.ic(parcel, 7, connectionEvent.oX(), false);
        a.ic(parcel, 8, connectionEvent.oY(), false);
        a.ik(parcel, 10, connectionEvent.pd());
        a.ik(parcel, 11, connectionEvent.oZ());
        a.hX(parcel, 12, connectionEvent.ox());
        a.ic(parcel, 13, connectionEvent.pb(), false);
        a.hS(parcel, hm);
    }
    
    public ConnectionEvent[] pe(final int n) {
        return new ConnectionEvent[n];
    }
    
    public ConnectionEvent pf(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        long iz = 0L;
        int ib2 = 0;
        String ie = null;
        String ie2 = null;
        String ie3 = null;
        String ie4 = null;
        String ie5 = null;
        String ie6 = null;
        long iz2 = 0L;
        long iz3 = 0L;
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
                    iz = b.iz(parcel, ig);
                    continue;
                }
                case 4: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 5: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 6: {
                    ie3 = b.iE(parcel, ig);
                    continue;
                }
                case 7: {
                    ie4 = b.iE(parcel, ig);
                    continue;
                }
                case 8: {
                    ie5 = b.iE(parcel, ig);
                    continue;
                }
                case 10: {
                    iz2 = b.iz(parcel, ig);
                    continue;
                }
                case 11: {
                    iz3 = b.iz(parcel, ig);
                    continue;
                }
                case 12: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 13: {
                    ie6 = b.iE(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new ConnectionEvent(ib, iz, ib2, ie, ie2, ie3, ie4, ie5, ie6, iz2, iz3);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
