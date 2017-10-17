// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.stats;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class c implements Parcelable$Creator
{
    static void oT(final WakeLockEvent wakeLockEvent, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, wakeLockEvent.lu);
        a.ik(parcel, 2, wakeLockEvent.ow());
        a.ic(parcel, 4, wakeLockEvent.or(), false);
        a.hX(parcel, 5, wakeLockEvent.oq());
        a.if(parcel, 6, wakeLockEvent.ov(), false);
        a.ik(parcel, 8, wakeLockEvent.oD());
        a.ic(parcel, 10, wakeLockEvent.oC(), false);
        a.hX(parcel, 11, wakeLockEvent.ox());
        a.ic(parcel, 12, wakeLockEvent.oz(), false);
        a.ic(parcel, 13, wakeLockEvent.oA(), false);
        a.hX(parcel, 14, wakeLockEvent.op());
        a.ig(parcel, 15, wakeLockEvent.ou());
        a.ik(parcel, 16, wakeLockEvent.ot());
        a.ic(parcel, 17, wakeLockEvent.oy(), false);
        a.hS(parcel, hm);
    }
    
    public WakeLockEvent oU(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        long iz = 0L;
        int ib2 = 0;
        String ie = null;
        int ib3 = 0;
        List if1 = null;
        String ie2 = null;
        long iz2 = 0L;
        int ib4 = 0;
        String ie3 = null;
        String ie4 = null;
        float ix2 = 0.0f;
        long iz3 = 0L;
        String ie5 = null;
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
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
                case 6: {
                    if1 = b.iF(parcel, ig);
                    continue;
                }
                case 8: {
                    iz2 = b.iz(parcel, ig);
                    continue;
                }
                case 10: {
                    ie3 = b.iE(parcel, ig);
                    continue;
                }
                case 11: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 12: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 13: {
                    ie4 = b.iE(parcel, ig);
                    continue;
                }
                case 14: {
                    ib4 = b.iB(parcel, ig);
                    continue;
                }
                case 15: {
                    ix2 = b.iX(parcel, ig);
                    continue;
                }
                case 16: {
                    iz3 = b.iz(parcel, ig);
                    continue;
                }
                case 17: {
                    ie5 = b.iE(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new WakeLockEvent(ib, iz, ib2, ie, ib3, if1, ie2, iz2, ib4, ie3, ie4, ix2, iz3, ie5);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public WakeLockEvent[] oV(final int n) {
        return new WakeLockEvent[n];
    }
}
