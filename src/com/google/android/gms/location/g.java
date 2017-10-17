// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class g implements Parcelable$Creator
{
    static void HV(final GestureEvent gestureEvent, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, gestureEvent.HP());
        a.ik(parcel, 2, gestureEvent.HS());
        a.ik(parcel, 3, gestureEvent.HR());
        a.hX(parcel, 4, gestureEvent.HN());
        a.hO(parcel, 5, gestureEvent.HM());
        a.hO(parcel, 6, gestureEvent.HO());
        a.hX(parcel, 1000, gestureEvent.HQ());
        a.hS(parcel, hm);
    }
    
    public GestureEvent HT(final Parcel parcel) {
        long iz = 0L;
        boolean il = false;
        final int ix = b.ix(parcel);
        boolean il2 = false;
        int ib = 0;
        long iz2 = iz;
        int ib2 = 0;
        int ib3 = 0;
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
                    iz2 = b.iz(parcel, ig);
                    continue;
                }
                case 3: {
                    iz = b.iz(parcel, ig);
                    continue;
                }
                case 4: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 5: {
                    il2 = b.iL(parcel, ig);
                    continue;
                }
                case 6: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new GestureEvent(ib3, ib2, iz2, iz, ib, il2, il);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public GestureEvent[] HU(final int n) {
        return new GestureEvent[n];
    }
}
