// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.IBinder;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.app.PendingIntent;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class f implements Parcelable$Creator
{
    static void FX(final LocationRequestUpdateData locationRequestUpdateData, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, locationRequestUpdateData.Cb);
        a.hK(parcel, 2, (Parcelable)locationRequestUpdateData.BY, n, false);
        a.hT(parcel, 3, locationRequestUpdateData.FN(), false);
        a.hK(parcel, 4, (Parcelable)locationRequestUpdateData.BZ, n, false);
        a.hT(parcel, 5, locationRequestUpdateData.FQ(), false);
        a.hT(parcel, 6, locationRequestUpdateData.FS(), false);
        a.hX(parcel, 1000, locationRequestUpdateData.FP());
        a.hS(parcel, hm);
    }
    
    public LocationRequestUpdateData[] FY(final int n) {
        return new LocationRequestUpdateData[n];
    }
    
    public LocationRequestUpdateData FZ(final Parcel parcel) {
        IBinder iv = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        int ib2 = 1;
        IBinder iv2 = null;
        PendingIntent pendingIntent = null;
        IBinder iv3 = null;
        LocationRequestInternal locationRequestInternal = null;
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
                    locationRequestInternal = (LocationRequestInternal)b.iK(parcel, ig, (Parcelable$Creator)LocationRequestInternal.CREATOR);
                    continue;
                }
                case 3: {
                    iv3 = b.iV(parcel, ig);
                    continue;
                }
                case 4: {
                    pendingIntent = (PendingIntent)b.iK(parcel, ig, PendingIntent.CREATOR);
                    continue;
                }
                case 5: {
                    iv2 = b.iV(parcel, ig);
                    continue;
                }
                case 6: {
                    iv = b.iV(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new LocationRequestUpdateData(ib, ib2, locationRequestInternal, iv3, pendingIntent, iv2, iv);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
