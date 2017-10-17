// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.app.PendingIntent;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class h implements Parcelable$Creator
{
    static void nX(final ConnectionResult connectionResult, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, connectionResult.ku);
        a.fj(parcel, 2, connectionResult.nu());
        a.eW(parcel, 3, (Parcelable)connectionResult.ny(), n, false);
        a.fo(parcel, 4, connectionResult.nv(), false);
        a.fe(parcel, ey);
    }
    
    public ConnectionResult[] nW(final int n) {
        return new ConnectionResult[n];
    }
    
    public ConnectionResult nY(final Parcel parcel) {
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
                    break;
                }
                case 1: {
                    fn2 = b.fN(parcel, fs);
                    break;
                }
                case 2: {
                    fn = b.fN(parcel, fs);
                    break;
                }
                case 3: {
                    pendingIntent = (PendingIntent)b.fW(parcel, fs, PendingIntent.CREATOR);
                    break;
                }
                case 4: {
                    fq = b.fQ(parcel, fs);
                    break;
                }
            }
            final String s = fq;
            pendingIntent = pendingIntent;
            fq = s;
        }
        if (parcel.dataPosition() == fj) {
            return new ConnectionResult(fn2, fn, pendingIntent, fq);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
