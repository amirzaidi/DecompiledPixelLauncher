// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void LO(final GoogleMapOptions googleMapOptions, final Parcel parcel, final int n) {
        final int hm = com.google.android.gms.common.internal.safeparcel.a.hM(parcel);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 1, googleMapOptions.LC());
        com.google.android.gms.common.internal.safeparcel.a.ii(parcel, 2, googleMapOptions.Lw());
        com.google.android.gms.common.internal.safeparcel.a.ii(parcel, 3, googleMapOptions.LE());
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 4, googleMapOptions.LL());
        com.google.android.gms.common.internal.safeparcel.a.hK(parcel, 5, (Parcelable)googleMapOptions.LH(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.ii(parcel, 6, googleMapOptions.LA());
        com.google.android.gms.common.internal.safeparcel.a.ii(parcel, 7, googleMapOptions.LJ());
        com.google.android.gms.common.internal.safeparcel.a.ii(parcel, 8, googleMapOptions.Lz());
        com.google.android.gms.common.internal.safeparcel.a.ii(parcel, 9, googleMapOptions.LI());
        com.google.android.gms.common.internal.safeparcel.a.ii(parcel, 10, googleMapOptions.LD());
        com.google.android.gms.common.internal.safeparcel.a.ii(parcel, 11, googleMapOptions.LM());
        com.google.android.gms.common.internal.safeparcel.a.ii(parcel, 12, googleMapOptions.LB());
        com.google.android.gms.common.internal.safeparcel.a.ii(parcel, 14, googleMapOptions.LK());
        com.google.android.gms.common.internal.safeparcel.a.ii(parcel, 15, googleMapOptions.Ly());
        com.google.android.gms.common.internal.safeparcel.a.hL(parcel, 16, googleMapOptions.LF(), false);
        com.google.android.gms.common.internal.safeparcel.a.hL(parcel, 17, googleMapOptions.LG(), false);
        com.google.android.gms.common.internal.safeparcel.a.hK(parcel, 18, (Parcelable)googleMapOptions.Lx(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.hS(parcel, hm);
    }
    
    public GoogleMapOptions LN(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        byte iw = -1;
        byte iw2 = -1;
        int ib2 = 0;
        CameraPosition cameraPosition = null;
        byte iw3 = -1;
        byte iw4 = -1;
        byte iw5 = -1;
        byte iw6 = -1;
        byte iw7 = -1;
        byte iw8 = -1;
        byte iw9 = -1;
        byte iw10 = -1;
        byte iw11 = -1;
        Float iu = null;
        Float iu2 = null;
        LatLngBounds latLngBounds = null;
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
                    iw = b.iw(parcel, ig);
                    continue;
                }
                case 3: {
                    iw2 = b.iw(parcel, ig);
                    continue;
                }
                case 4: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 5: {
                    cameraPosition = (CameraPosition)b.iK(parcel, ig, (Parcelable$Creator)CameraPosition.CREATOR);
                    continue;
                }
                case 6: {
                    iw3 = b.iw(parcel, ig);
                    continue;
                }
                case 7: {
                    iw4 = b.iw(parcel, ig);
                    continue;
                }
                case 8: {
                    iw5 = b.iw(parcel, ig);
                    continue;
                }
                case 9: {
                    iw6 = b.iw(parcel, ig);
                    continue;
                }
                case 10: {
                    iw7 = b.iw(parcel, ig);
                    continue;
                }
                case 11: {
                    iw8 = b.iw(parcel, ig);
                    continue;
                }
                case 12: {
                    iw9 = b.iw(parcel, ig);
                    continue;
                }
                case 14: {
                    iw10 = b.iw(parcel, ig);
                    continue;
                }
                case 15: {
                    iw11 = b.iw(parcel, ig);
                    continue;
                }
                case 16: {
                    iu = b.iu(parcel, ig);
                    continue;
                }
                case 17: {
                    iu2 = b.iu(parcel, ig);
                    continue;
                }
                case 18: {
                    latLngBounds = (LatLngBounds)b.iK(parcel, ig, (Parcelable$Creator)LatLngBounds.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new GoogleMapOptions(ib, iw, iw2, ib2, cameraPosition, iw3, iw4, iw5, iw6, iw7, iw8, iw9, iw10, iw11, iu, iu2, latLngBounds);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public GoogleMapOptions[] LP(final int n) {
        return new GoogleMapOptions[n];
    }
}
