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
    static void pO(final SnapshotRequest snapshotRequest, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, snapshotRequest.qe());
        a.fj(parcel, 2, snapshotRequest.qf());
        a.fc(parcel, 3, snapshotRequest.qd(), false);
        a.fe(parcel, ey);
    }
    
    public SnapshotRequest[] pN(final int n) {
        return new SnapshotRequest[n];
    }
    
    public SnapshotRequest pP(final Parcel parcel) {
        int fn = 0;
        final int fj = b.fJ(parcel);
        ArrayList fz = null;
        int fn2 = 0;
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
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 3: {
                    fz = b.fZ(parcel, fs, BeaconStateImpl$TypeFilterImpl.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new SnapshotRequest(fn2, fn, fz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
