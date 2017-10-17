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
    static void qJ(final ConnectionResult connectionResult, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, connectionResult.nm);
        a.hX(parcel, 2, connectionResult.qh());
        a.hK(parcel, 3, (Parcelable)connectionResult.ql(), n, false);
        a.ic(parcel, 4, connectionResult.qi(), false);
        a.hS(parcel, hm);
    }
    
    public ConnectionResult[] qI(final int n) {
        return new ConnectionResult[n];
    }
    
    public ConnectionResult qK(final Parcel parcel) {
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
                    break;
                }
                case 1: {
                    ib2 = b.iB(parcel, ig);
                    break;
                }
                case 2: {
                    ib = b.iB(parcel, ig);
                    break;
                }
                case 3: {
                    pendingIntent = (PendingIntent)b.iK(parcel, ig, PendingIntent.CREATOR);
                    break;
                }
                case 4: {
                    ie = b.iE(parcel, ig);
                    break;
                }
            }
            final String s = ie;
            pendingIntent = pendingIntent;
            ie = s;
        }
        if (parcel.dataPosition() == ix) {
            return new ConnectionResult(ib2, ib, pendingIntent, ie);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
