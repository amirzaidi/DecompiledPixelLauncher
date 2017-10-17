// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class f implements Parcelable$Creator
{
    static void pY(final BeaconStateImpl$BeaconInfoImpl beaconStateImpl$BeaconInfoImpl, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, beaconStateImpl$BeaconInfoImpl.qY());
        a.fo(parcel, 2, beaconStateImpl$BeaconInfoImpl.qW(), false);
        a.fo(parcel, 3, beaconStateImpl$BeaconInfoImpl.qX(), false);
        a.fv(parcel, 4, beaconStateImpl$BeaconInfoImpl.qV(), false);
        a.fe(parcel, ey);
    }
    
    public BeaconStateImpl$BeaconInfoImpl[] pW(final int n) {
        return new BeaconStateImpl$BeaconInfoImpl[n];
    }
    
    public BeaconStateImpl$BeaconInfoImpl pX(final Parcel parcel) {
        byte[] gf = null;
        final int fj = b.fJ(parcel);
        String fq = null;
        int fn = 0;
        String fq2 = null;
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
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 3: {
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 4: {
                    gf = b.gf(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new BeaconStateImpl$BeaconInfoImpl(fn, fq, fq2, gf);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
