// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class l implements Parcelable$Creator
{
    static void ri(final NetworkStateImpl networkStateImpl, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, networkStateImpl.pE());
        a.fj(parcel, 2, networkStateImpl.pD());
        a.fj(parcel, 3, networkStateImpl.pB());
        a.fe(parcel, ey);
    }
    
    public NetworkStateImpl rh(final Parcel parcel) {
        int fn = 0;
        final int fj = b.fJ(parcel);
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
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 3: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new NetworkStateImpl(fn3, fn2, fn);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public NetworkStateImpl[] rj(final int n) {
        return new NetworkStateImpl[n];
    }
}
