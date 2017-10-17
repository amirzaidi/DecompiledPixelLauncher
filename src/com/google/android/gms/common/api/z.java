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
    static void ht(final Status status, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, status.gW());
        a.ic(parcel, 2, status.gX(), false);
        a.hK(parcel, 3, (Parcelable)status.getPendingIntent(), n, false);
        a.hX(parcel, 1000, status.gZ());
        a.hS(parcel, hm);
    }
    
    public Status[] hr(final int n) {
        return new Status[n];
    }
    
    public Status hs(final Parcel parcel) {
        PendingIntent pendingIntent = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        int ib2 = 0;
        String ie = null;
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
                    pendingIntent = (PendingIntent)b.iK(parcel, ig, PendingIntent.CREATOR);
                    continue;
                }
                case 1000: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new Status(ib2, ib, ie, pendingIntent);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
