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
    static void Hc(final GestureEvent gestureEvent, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, gestureEvent.GW());
        a.fw(parcel, 2, gestureEvent.GZ());
        a.fw(parcel, 3, gestureEvent.GY());
        a.fj(parcel, 4, gestureEvent.GU());
        a.fa(parcel, 5, gestureEvent.GT());
        a.fa(parcel, 6, gestureEvent.GV());
        a.fj(parcel, 1000, gestureEvent.GX());
        a.fe(parcel, ey);
    }
    
    public GestureEvent Ha(final Parcel parcel) {
        long fl = 0L;
        boolean fx = false;
        final int fj = b.fJ(parcel);
        boolean fx2 = false;
        int fn = 0;
        long fl2 = fl;
        int fn2 = 0;
        int fn3 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fl2 = b.fL(parcel, fs);
                    continue;
                }
                case 3: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
                case 4: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 5: {
                    fx2 = b.fX(parcel, fs);
                    continue;
                }
                case 6: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new GestureEvent(fn3, fn2, fl2, fl, fn, fx2, fx);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public GestureEvent[] Hb(final int n) {
        return new GestureEvent[n];
    }
}
