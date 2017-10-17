// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class i implements Parcelable$Creator
{
    static void Kd(final CircleOptions circleOptions, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, circleOptions.Lo());
        a.hK(parcel, 2, (Parcelable)circleOptions.Lk(), n, false);
        a.ie(parcel, 3, circleOptions.getRadius());
        a.ig(parcel, 4, circleOptions.Lm());
        a.hX(parcel, 5, circleOptions.Lp());
        a.hX(parcel, 6, circleOptions.Lq());
        a.ig(parcel, 7, circleOptions.Ll());
        a.hO(parcel, 8, circleOptions.isVisible());
        a.hO(parcel, 9, circleOptions.Ln());
        a.hS(parcel, hm);
    }
    
    public CircleOptions Kb(final Parcel parcel) {
        float ix = 0.0f;
        boolean il = false;
        final int ix2 = b.ix(parcel);
        LatLng latLng = null;
        double ip = 0.0;
        boolean il2 = false;
        int ib = 0;
        int ib2 = 0;
        float ix3 = 0.0f;
        int ib3 = 0;
        while (parcel.dataPosition() < ix2) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    latLng = (LatLng)b.iK(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 3: {
                    ip = b.iP(parcel, ig);
                    continue;
                }
                case 4: {
                    ix3 = b.iX(parcel, ig);
                    continue;
                }
                case 5: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 6: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 7: {
                    ix = b.iX(parcel, ig);
                    continue;
                }
                case 8: {
                    il2 = b.iL(parcel, ig);
                    continue;
                }
                case 9: {
                    il = b.iL(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix2) {
            return new CircleOptions(ib3, latLng, ip, ix3, ib2, ib, ix, il2, il);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix2).toString(), parcel);
    }
    
    public CircleOptions[] Kc(final int n) {
        return new CircleOptions[n];
    }
}
