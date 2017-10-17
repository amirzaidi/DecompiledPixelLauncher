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

public class c implements Parcelable$Creator
{
    static void eI(final SnapshotRequest snapshotRequest, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, snapshotRequest.fb());
        a.hX(parcel, 2, snapshotRequest.fc());
        a.hQ(parcel, 3, snapshotRequest.fa(), false);
        a.hS(parcel, hm);
    }
    
    public SnapshotRequest[] eH(final int n) {
        return new SnapshotRequest[n];
    }
    
    public SnapshotRequest eJ(final Parcel parcel) {
        int ib = 0;
        final int ix = b.ix(parcel);
        ArrayList in = null;
        int ib2 = 0;
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
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 3: {
                    in = b.iN(parcel, ig, BeaconStateImpl$TypeFilterImpl.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new SnapshotRequest(ib2, ib, in);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
