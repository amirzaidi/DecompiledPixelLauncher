// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void pL(final PowerStateImpl powerStateImpl, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, powerStateImpl.rg());
        a.fj(parcel, 2, powerStateImpl.rf());
        a.fq(parcel, 3, powerStateImpl.rd());
        a.fe(parcel, ey);
    }
    
    public PowerStateImpl[] pK(final int n) {
        return new PowerStateImpl[n];
    }
    
    public PowerStateImpl pM(final Parcel parcel) {
        int fn = 0;
        final int fj = com.google.android.gms.common.internal.safeparcel.b.fJ(parcel);
        double gb = 0.0;
        int fn2 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = com.google.android.gms.common.internal.safeparcel.b.fS(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.ga(fs)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn2 = com.google.android.gms.common.internal.safeparcel.b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fn = com.google.android.gms.common.internal.safeparcel.b.fN(parcel, fs);
                    continue;
                }
                case 3: {
                    gb = com.google.android.gms.common.internal.safeparcel.b.gb(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new PowerStateImpl(fn2, fn, gb);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
