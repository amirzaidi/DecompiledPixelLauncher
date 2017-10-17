// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class n implements Parcelable$Creator
{
    static void GC(final ParcelableGeofence parcelableGeofence, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.ic(parcel, 1, parcelableGeofence.Gk(), false);
        a.ik(parcel, 2, parcelableGeofence.Gt());
        a.hI(parcel, 3, parcelableGeofence.Gn());
        a.ie(parcel, 4, parcelableGeofence.Gm());
        a.ie(parcel, 5, parcelableGeofence.Gi());
        a.ig(parcel, 6, parcelableGeofence.getRadius());
        a.hX(parcel, 7, parcelableGeofence.Gp());
        a.hX(parcel, 1000, parcelableGeofence.Gv());
        a.hX(parcel, 8, parcelableGeofence.Gr());
        a.hX(parcel, 9, parcelableGeofence.Gu());
        a.hS(parcel, hm);
    }
    
    public ParcelableGeofence GA(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        String ie = null;
        int ib2 = 0;
        short im = 0;
        double ip = 0.0;
        double ip2 = 0.0;
        float ix2 = 0.0f;
        long iz = 0L;
        int ib3 = 0;
        int ib4 = -1;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 2: {
                    iz = b.iz(parcel, ig);
                    continue;
                }
                case 3: {
                    im = b.im(parcel, ig);
                    continue;
                }
                case 4: {
                    ip = b.iP(parcel, ig);
                    continue;
                }
                case 5: {
                    ip2 = b.iP(parcel, ig);
                    continue;
                }
                case 6: {
                    ix2 = b.iX(parcel, ig);
                    continue;
                }
                case 7: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 8: {
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
                case 9: {
                    ib4 = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new ParcelableGeofence(ib, ie, ib2, im, ip, ip2, ix2, iz, ib3, ib4);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public ParcelableGeofence[] GB(final int n) {
        return new ParcelableGeofence[n];
    }
}
