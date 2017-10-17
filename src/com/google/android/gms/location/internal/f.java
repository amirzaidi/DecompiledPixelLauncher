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
    static void Fe(final LocationRequestUpdateData locationRequestUpdateData, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, locationRequestUpdateData.Aw);
        a.eW(parcel, 2, (Parcelable)locationRequestUpdateData.At, n, false);
        a.ff(parcel, 3, locationRequestUpdateData.EU(), false);
        a.eW(parcel, 4, (Parcelable)locationRequestUpdateData.Au, n, false);
        a.ff(parcel, 5, locationRequestUpdateData.EX(), false);
        a.ff(parcel, 6, locationRequestUpdateData.EZ(), false);
        a.fj(parcel, 1000, locationRequestUpdateData.EW());
        a.fe(parcel, ey);
    }
    
    public LocationRequestUpdateData[] Ff(final int n) {
        return new LocationRequestUpdateData[n];
    }
    
    public LocationRequestUpdateData Fg(final Parcel parcel) {
        IBinder gh = null;
        final int fj = b.fJ(parcel);
        int fn = 0;
        int fn2 = 1;
        IBinder gh2 = null;
        PendingIntent pendingIntent = null;
        IBinder gh3 = null;
        LocationRequestInternal locationRequestInternal = null;
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
                    locationRequestInternal = (LocationRequestInternal)b.fW(parcel, fs, (Parcelable$Creator)LocationRequestInternal.CREATOR);
                    continue;
                }
                case 3: {
                    gh3 = b.gh(parcel, fs);
                    continue;
                }
                case 4: {
                    pendingIntent = (PendingIntent)b.fW(parcel, fs, PendingIntent.CREATOR);
                    continue;
                }
                case 5: {
                    gh2 = b.gh(parcel, fs);
                    continue;
                }
                case 6: {
                    gh = b.gh(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new LocationRequestUpdateData(fn, fn2, locationRequestInternal, gh3, pendingIntent, gh2, gh);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
