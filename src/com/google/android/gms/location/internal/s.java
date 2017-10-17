// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class s implements Parcelable$Creator
{
    static void FO(final LocationRequestInternal locationRequestInternal, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.eW(parcel, 1, (Parcelable)locationRequestInternal.AQ, n, false);
        a.fa(parcel, 4, locationRequestInternal.AP);
        a.fc(parcel, 5, locationRequestInternal.AW, false);
        a.fo(parcel, 6, locationRequestInternal.AR, false);
        a.fa(parcel, 7, locationRequestInternal.AS);
        a.fj(parcel, 1000, locationRequestInternal.Fo());
        a.fa(parcel, 8, locationRequestInternal.AU);
        a.fe(parcel, ey);
    }
    
    public LocationRequestInternal FP(final Parcel parcel) {
        String fq = null;
        boolean fx = false;
        final int fj = b.fJ(parcel);
        boolean fx2 = true;
        List list = LocationRequestInternal.AV;
        boolean fx3 = false;
        LocationRequest locationRequest = null;
        int fn = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    locationRequest = (LocationRequest)b.fW(parcel, fs, (Parcelable$Creator)LocationRequest.CREATOR);
                    continue;
                }
                case 4: {
                    fx2 = b.fX(parcel, fs);
                    continue;
                }
                case 5: {
                    list = b.fZ(parcel, fs, (Parcelable$Creator)ClientIdentity.CREATOR);
                    continue;
                }
                case 6: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 7: {
                    fx3 = b.fX(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 8: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new LocationRequestInternal(fn, locationRequest, fx2, list, fq, fx3, fx);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public LocationRequestInternal[] FQ(final int n) {
        return new LocationRequestInternal[n];
    }
}
