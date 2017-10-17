// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void Ea(final NearbyAlertFilter nearbyAlertFilter, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fr(parcel, 1, nearbyAlertFilter.zK, false);
        a.fb(parcel, 2, nearbyAlertFilter.zI, false);
        a.fc(parcel, 3, nearbyAlertFilter.zO, false);
        a.fo(parcel, 4, nearbyAlertFilter.zN, false);
        a.fa(parcel, 5, nearbyAlertFilter.zP);
        a.fj(parcel, 1000, nearbyAlertFilter.zM);
        a.fe(parcel, ey);
    }
    
    public NearbyAlertFilter DZ(final Parcel parcel) {
        boolean fx = false;
        String fq = null;
        final int fj = com.google.android.gms.common.internal.safeparcel.b.fJ(parcel);
        List fz = null;
        List fh = null;
        List fr = null;
        int fn = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = com.google.android.gms.common.internal.safeparcel.b.fS(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.ga(fs)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fr = com.google.android.gms.common.internal.safeparcel.b.fR(parcel, fs);
                    continue;
                }
                case 2: {
                    fh = com.google.android.gms.common.internal.safeparcel.b.fH(parcel, fs);
                    continue;
                }
                case 3: {
                    fz = com.google.android.gms.common.internal.safeparcel.b.fZ(parcel, fs, (Parcelable$Creator)UserDataType.CREATOR);
                    continue;
                }
                case 4: {
                    fq = com.google.android.gms.common.internal.safeparcel.b.fQ(parcel, fs);
                    continue;
                }
                case 5: {
                    fx = com.google.android.gms.common.internal.safeparcel.b.fX(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn = com.google.android.gms.common.internal.safeparcel.b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new NearbyAlertFilter(fn, fr, fh, fz, fq, fx);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public NearbyAlertFilter[] Eb(final int n) {
        return new NearbyAlertFilter[n];
    }
}
