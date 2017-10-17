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

public class d implements Parcelable$Creator
{
    static void JA(final MarkerOptions markerOptions, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, markerOptions.Ko());
        a.hK(parcel, 2, (Parcelable)markerOptions.Kt(), n, false);
        a.ic(parcel, 3, markerOptions.getTitle(), false);
        a.ic(parcel, 4, markerOptions.Kj(), false);
        a.hT(parcel, 5, markerOptions.Kr(), false);
        a.ig(parcel, 6, markerOptions.Kp());
        a.ig(parcel, 7, markerOptions.Kk());
        a.hO(parcel, 8, markerOptions.Ku());
        a.hO(parcel, 9, markerOptions.isVisible());
        a.hO(parcel, 10, markerOptions.Kl());
        a.ig(parcel, 11, markerOptions.Kn());
        a.ig(parcel, 12, markerOptions.Ks());
        a.ig(parcel, 13, markerOptions.Km());
        a.ig(parcel, 14, markerOptions.getAlpha());
        a.ig(parcel, 15, markerOptions.Kq());
        a.hS(parcel, hm);
    }
    
    public MarkerOptions[] JB(final int n) {
        return new MarkerOptions[n];
    }
    
    public MarkerOptions Jz(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        LatLng latLng = null;
        String ie = null;
        String ie2 = null;
        IBinder iv = null;
        float ix2 = 0.0f;
        float ix3 = 0.0f;
        boolean il = false;
        boolean il2 = false;
        boolean il3 = false;
        float ix4 = 0.0f;
        float ix5 = 0.5f;
        float ix6 = 0.0f;
        float ix7 = 1.0f;
        float ix8 = 0.0f;
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
                    latLng = (LatLng)b.iK(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 3: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 4: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 5: {
                    iv = b.iV(parcel, ig);
                    continue;
                }
                case 6: {
                    ix2 = b.iX(parcel, ig);
                    continue;
                }
                case 7: {
                    ix3 = b.iX(parcel, ig);
                    continue;
                }
                case 8: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 9: {
                    il2 = b.iL(parcel, ig);
                    continue;
                }
                case 10: {
                    il3 = b.iL(parcel, ig);
                    continue;
                }
                case 11: {
                    ix4 = b.iX(parcel, ig);
                    continue;
                }
                case 12: {
                    ix5 = b.iX(parcel, ig);
                    continue;
                }
                case 13: {
                    ix6 = b.iX(parcel, ig);
                    continue;
                }
                case 14: {
                    ix7 = b.iX(parcel, ig);
                    continue;
                }
                case 15: {
                    ix8 = b.iX(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new MarkerOptions(ib, latLng, ie, ie2, iv, ix2, ix3, il, il2, il3, ix4, ix5, ix6, ix7, ix8);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
