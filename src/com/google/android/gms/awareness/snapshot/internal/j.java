// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import java.util.ArrayList;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class j implements Parcelable$Creator
{
    static void qF(final BeaconStateImpl beaconStateImpl, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, beaconStateImpl.rc());
        a.fc(parcel, 2, beaconStateImpl.rb(), false);
        a.fe(parcel, ey);
    }
    
    public BeaconStateImpl[] qE(final int n) {
        return new BeaconStateImpl[n];
    }
    
    public BeaconStateImpl qG(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        ArrayList fz = null;
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
                    fz = b.fZ(parcel, fs, BeaconStateImpl$BeaconInfoImpl.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new BeaconStateImpl(fn, fz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
