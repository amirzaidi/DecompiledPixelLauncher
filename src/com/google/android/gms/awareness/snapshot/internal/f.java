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
    static void eS(final BeaconStateImpl$BeaconInfoImpl beaconStateImpl$BeaconInfoImpl, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, beaconStateImpl$BeaconInfoImpl.fU());
        a.ic(parcel, 2, beaconStateImpl$BeaconInfoImpl.fS(), false);
        a.ic(parcel, 3, beaconStateImpl$BeaconInfoImpl.fT(), false);
        a.ij(parcel, 4, beaconStateImpl$BeaconInfoImpl.fR(), false);
        a.hS(parcel, hm);
    }
    
    public BeaconStateImpl$BeaconInfoImpl[] eQ(final int n) {
        return new BeaconStateImpl$BeaconInfoImpl[n];
    }
    
    public BeaconStateImpl$BeaconInfoImpl eR(final Parcel parcel) {
        byte[] it = null;
        final int ix = b.ix(parcel);
        String ie = null;
        int ib = 0;
        String ie2 = null;
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
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 3: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 4: {
                    it = b.iT(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new BeaconStateImpl$BeaconInfoImpl(ib, ie, ie2, it);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
