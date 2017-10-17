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
    static void Ij(final FloorChangeEvent floorChangeEvent, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, floorChangeEvent.Io());
        a.fj(parcel, 2, floorChangeEvent.Im());
        a.fw(parcel, 3, floorChangeEvent.Iq());
        a.fw(parcel, 4, floorChangeEvent.Ip());
        a.fw(parcel, 5, floorChangeEvent.In());
        a.fw(parcel, 6, floorChangeEvent.Is());
        a.fs(parcel, 7, floorChangeEvent.Il());
        a.fj(parcel, 1000, floorChangeEvent.Ir());
        a.fe(parcel, ey);
    }
    
    public FloorChangeEvent createFromParcel(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        int fn2 = 0;
        int fn3 = 0;
        long fl = 0L;
        long fl2 = 0L;
        long fl3 = 0L;
        long fl4 = 0L;
        float gj = 0.0f;
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
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 3: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
                case 4: {
                    fl2 = b.fL(parcel, fs);
                    continue;
                }
                case 5: {
                    fl3 = b.fL(parcel, fs);
                    continue;
                }
                case 6: {
                    fl4 = b.fL(parcel, fs);
                    continue;
                }
                case 7: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new FloorChangeEvent(fn, fn2, fn3, fl, fl2, fl3, fl4, gj);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public FloorChangeEvent[] newArray(final int n) {
        return new FloorChangeEvent[n];
    }
}
