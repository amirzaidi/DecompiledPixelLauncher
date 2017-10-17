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
    static void eF(final PowerStateImpl powerStateImpl, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, powerStateImpl.ga());
        a.hX(parcel, 2, powerStateImpl.fZ());
        a.ie(parcel, 3, powerStateImpl.fX());
        a.hS(parcel, hm);
    }
    
    public PowerStateImpl[] eE(final int n) {
        return new PowerStateImpl[n];
    }
    
    public PowerStateImpl eG(final Parcel parcel) {
        int ib = 0;
        final int ix = com.google.android.gms.common.internal.safeparcel.b.ix(parcel);
        double ip = 0.0;
        int ib2 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = com.google.android.gms.common.internal.safeparcel.b.iG(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.iO(ig)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib2 = com.google.android.gms.common.internal.safeparcel.b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ib = com.google.android.gms.common.internal.safeparcel.b.iB(parcel, ig);
                    continue;
                }
                case 3: {
                    ip = com.google.android.gms.common.internal.safeparcel.b.iP(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new PowerStateImpl(ib2, ib, ip);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
