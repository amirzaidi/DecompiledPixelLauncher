// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import android.os.IBinder;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.app.PendingIntent;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void Ox(final UpdateFenceOperation updateFenceOperation, final Parcel parcel, final int n) {
        final int hm = com.google.android.gms.common.internal.safeparcel.a.hM(parcel);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 1, updateFenceOperation.Pj());
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 2, updateFenceOperation.Ph());
        com.google.android.gms.common.internal.safeparcel.a.hK(parcel, 3, (Parcelable)updateFenceOperation.Pi(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.hT(parcel, 4, updateFenceOperation.Pf(), false);
        com.google.android.gms.common.internal.safeparcel.a.hK(parcel, 5, (Parcelable)updateFenceOperation.getPendingIntent(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.ic(parcel, 6, updateFenceOperation.Pk(), false);
        com.google.android.gms.common.internal.safeparcel.a.ik(parcel, 7, updateFenceOperation.Pg());
        com.google.android.gms.common.internal.safeparcel.a.ik(parcel, 8, updateFenceOperation.Pe());
        com.google.android.gms.common.internal.safeparcel.a.hS(parcel, hm);
    }
    
    public UpdateFenceOperation[] Oy(final int n) {
        return new UpdateFenceOperation[n];
    }
    
    public UpdateFenceOperation Oz(final Parcel parcel) {
        long iz = 0L;
        int ib = 0;
        String ie = null;
        final int ix = b.ix(parcel);
        long iz2 = iz;
        PendingIntent pendingIntent = null;
        IBinder iv = null;
        ContextFenceRegistrationStub contextFenceRegistrationStub = null;
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
                    contextFenceRegistrationStub = (ContextFenceRegistrationStub)b.iK(parcel, ig, ContextFenceRegistrationStub.CREATOR);
                    continue;
                }
                case 4: {
                    iv = b.iV(parcel, ig);
                    continue;
                }
                case 5: {
                    pendingIntent = (PendingIntent)b.iK(parcel, ig, PendingIntent.CREATOR);
                    continue;
                }
                case 6: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 7: {
                    iz2 = b.iz(parcel, ig);
                    continue;
                }
                case 8: {
                    iz = b.iz(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new UpdateFenceOperation(ib2, ib, contextFenceRegistrationStub, iv, pendingIntent, ie, iz2, iz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
