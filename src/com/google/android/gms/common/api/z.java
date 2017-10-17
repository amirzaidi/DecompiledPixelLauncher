// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.app.PendingIntent;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class z implements Parcelable$Creator
{
    static void eF(final Status status, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, status.dD());
        a.fo(parcel, 2, status.dE(), false);
        a.eW(parcel, 3, (Parcelable)status.getPendingIntent(), n, false);
        a.fj(parcel, 1000, status.dG());
        a.fe(parcel, ey);
    }
    
    public Status[] eD(final int n) {
        return new Status[n];
    }
    
    public Status eE(final Parcel parcel) {
        PendingIntent pendingIntent = null;
        final int fj = b.fJ(parcel);
        int fn = 0;
        int fn2 = 0;
        String fq = null;
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
                    pendingIntent = (PendingIntent)b.fW(parcel, fs, PendingIntent.CREATOR);
                    continue;
                }
                case 1000: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new Status(fn2, fn, fq, pendingIntent);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
