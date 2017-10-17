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
    static void pR(final DayAttributesImpl dayAttributesImpl, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, dayAttributesImpl.pG());
        a.fn(parcel, 2, dayAttributesImpl.pF(), false);
        a.fe(parcel, ey);
    }
    
    public DayAttributesImpl pQ(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        int[] fk = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fk = b.fK(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new DayAttributesImpl(fn, fk);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public DayAttributesImpl[] pS(final int n) {
        return new DayAttributesImpl[n];
    }
}
