// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.IBinder;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class c implements Parcelable$Creator
{
    static void Jw(final GroundOverlayOptions groundOverlayOptions, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, groundOverlayOptions.KE());
        a.hT(parcel, 2, groundOverlayOptions.Kv(), false);
        a.hK(parcel, 3, (Parcelable)groundOverlayOptions.Kw(), n, false);
        a.ig(parcel, 4, groundOverlayOptions.getWidth());
        a.ig(parcel, 5, groundOverlayOptions.getHeight());
        a.hK(parcel, 6, (Parcelable)groundOverlayOptions.KC(), n, false);
        a.ig(parcel, 7, groundOverlayOptions.KA());
        a.ig(parcel, 8, groundOverlayOptions.KB());
        a.hO(parcel, 9, groundOverlayOptions.isVisible());
        a.ig(parcel, 10, groundOverlayOptions.Kx());
        a.ig(parcel, 11, groundOverlayOptions.Kz());
        a.ig(parcel, 12, groundOverlayOptions.Ky());
        a.hO(parcel, 13, groundOverlayOptions.KD());
        a.hS(parcel, hm);
    }
    
    public GroundOverlayOptions Jv(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        IBinder iv = null;
        LatLng latLng = null;
        float ix2 = 0.0f;
        float ix3 = 0.0f;
        LatLngBounds latLngBounds = null;
        float ix4 = 0.0f;
        float ix5 = 0.0f;
        boolean il = false;
        float ix6 = 0.0f;
        float ix7 = 0.0f;
        float ix8 = 0.0f;
        boolean il2 = false;
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
                    iv = b.iV(parcel, ig);
                    continue;
                }
                case 3: {
                    latLng = (LatLng)b.iK(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 4: {
                    ix2 = b.iX(parcel, ig);
                    continue;
                }
                case 5: {
                    ix3 = b.iX(parcel, ig);
                    continue;
                }
                case 6: {
                    latLngBounds = (LatLngBounds)b.iK(parcel, ig, (Parcelable$Creator)LatLngBounds.CREATOR);
                    continue;
                }
                case 7: {
                    ix4 = b.iX(parcel, ig);
                    continue;
                }
                case 8: {
                    ix5 = b.iX(parcel, ig);
                    continue;
                }
                case 9: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 10: {
                    ix6 = b.iX(parcel, ig);
                    continue;
                }
                case 11: {
                    ix7 = b.iX(parcel, ig);
                    continue;
                }
                case 12: {
                    ix8 = b.iX(parcel, ig);
                    continue;
                }
                case 13: {
                    il2 = b.iL(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new GroundOverlayOptions(ib, iv, latLng, ix2, ix3, latLngBounds, ix4, ix5, il, ix6, ix7, ix8, il2);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public GroundOverlayOptions[] Jx(final int n) {
        return new GroundOverlayOptions[n];
    }
}
