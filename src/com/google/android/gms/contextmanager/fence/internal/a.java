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
    static void NE(final UpdateFenceOperation updateFenceOperation, final Parcel parcel, final int n) {
        final int ey = com.google.android.gms.common.internal.safeparcel.a.eY(parcel);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 1, updateFenceOperation.Oq());
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 2, updateFenceOperation.Oo());
        com.google.android.gms.common.internal.safeparcel.a.eW(parcel, 3, (Parcelable)updateFenceOperation.Op(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.ff(parcel, 4, updateFenceOperation.Om(), false);
        com.google.android.gms.common.internal.safeparcel.a.eW(parcel, 5, (Parcelable)updateFenceOperation.getPendingIntent(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.fo(parcel, 6, updateFenceOperation.Or(), false);
        com.google.android.gms.common.internal.safeparcel.a.fw(parcel, 7, updateFenceOperation.On());
        com.google.android.gms.common.internal.safeparcel.a.fw(parcel, 8, updateFenceOperation.Ol());
        com.google.android.gms.common.internal.safeparcel.a.fe(parcel, ey);
    }
    
    public UpdateFenceOperation[] NF(final int n) {
        return new UpdateFenceOperation[n];
    }
    
    public UpdateFenceOperation NG(final Parcel parcel) {
        long fl = 0L;
        int fn = 0;
        String fq = null;
        final int fj = b.fJ(parcel);
        long fl2 = fl;
        PendingIntent pendingIntent = null;
        IBinder gh = null;
        ContextFenceRegistrationStub contextFenceRegistrationStub = null;
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
                    contextFenceRegistrationStub = (ContextFenceRegistrationStub)b.fW(parcel, fs, ContextFenceRegistrationStub.CREATOR);
                    continue;
                }
                case 4: {
                    gh = b.gh(parcel, fs);
                    continue;
                }
                case 5: {
                    pendingIntent = (PendingIntent)b.fW(parcel, fs, PendingIntent.CREATOR);
                    continue;
                }
                case 6: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 7: {
                    fl2 = b.fL(parcel, fs);
                    continue;
                }
                case 8: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new UpdateFenceOperation(fn2, fn, contextFenceRegistrationStub, gh, pendingIntent, fq, fl2, fl);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
