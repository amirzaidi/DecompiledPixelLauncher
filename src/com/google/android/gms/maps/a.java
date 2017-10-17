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
    static void KV(final GoogleMapOptions googleMapOptions, final Parcel parcel, final int n) {
        final int ey = com.google.android.gms.common.internal.safeparcel.a.eY(parcel);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 1, googleMapOptions.KJ());
        com.google.android.gms.common.internal.safeparcel.a.fu(parcel, 2, googleMapOptions.KD());
        com.google.android.gms.common.internal.safeparcel.a.fu(parcel, 3, googleMapOptions.KL());
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 4, googleMapOptions.KS());
        com.google.android.gms.common.internal.safeparcel.a.eW(parcel, 5, (Parcelable)googleMapOptions.KO(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.fu(parcel, 6, googleMapOptions.KH());
        com.google.android.gms.common.internal.safeparcel.a.fu(parcel, 7, googleMapOptions.KQ());
        com.google.android.gms.common.internal.safeparcel.a.fu(parcel, 8, googleMapOptions.KG());
        com.google.android.gms.common.internal.safeparcel.a.fu(parcel, 9, googleMapOptions.KP());
        com.google.android.gms.common.internal.safeparcel.a.fu(parcel, 10, googleMapOptions.KK());
        com.google.android.gms.common.internal.safeparcel.a.fu(parcel, 11, googleMapOptions.KT());
        com.google.android.gms.common.internal.safeparcel.a.fu(parcel, 12, googleMapOptions.KI());
        com.google.android.gms.common.internal.safeparcel.a.fu(parcel, 14, googleMapOptions.KR());
        com.google.android.gms.common.internal.safeparcel.a.fu(parcel, 15, googleMapOptions.KF());
        com.google.android.gms.common.internal.safeparcel.a.eX(parcel, 16, googleMapOptions.KM(), false);
        com.google.android.gms.common.internal.safeparcel.a.eX(parcel, 17, googleMapOptions.KN(), false);
        com.google.android.gms.common.internal.safeparcel.a.eW(parcel, 18, (Parcelable)googleMapOptions.KE(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.fe(parcel, ey);
    }
    
    public GoogleMapOptions KU(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        byte fi = -1;
        byte fi2 = -1;
        int fn2 = 0;
        CameraPosition cameraPosition = null;
        byte fi3 = -1;
        byte fi4 = -1;
        byte fi5 = -1;
        byte fi6 = -1;
        byte fi7 = -1;
        byte fi8 = -1;
        byte fi9 = -1;
        byte fi10 = -1;
        byte fi11 = -1;
        Float fg = null;
        Float fg2 = null;
        LatLngBounds latLngBounds = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fi = b.fI(parcel, fs);
                    continue;
                }
                case 3: {
                    fi2 = b.fI(parcel, fs);
                    continue;
                }
                case 4: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 5: {
                    cameraPosition = (CameraPosition)b.fW(parcel, fs, (Parcelable$Creator)CameraPosition.CREATOR);
                    continue;
                }
                case 6: {
                    fi3 = b.fI(parcel, fs);
                    continue;
                }
                case 7: {
                    fi4 = b.fI(parcel, fs);
                    continue;
                }
                case 8: {
                    fi5 = b.fI(parcel, fs);
                    continue;
                }
                case 9: {
                    fi6 = b.fI(parcel, fs);
                    continue;
                }
                case 10: {
                    fi7 = b.fI(parcel, fs);
                    continue;
                }
                case 11: {
                    fi8 = b.fI(parcel, fs);
                    continue;
                }
                case 12: {
                    fi9 = b.fI(parcel, fs);
                    continue;
                }
                case 14: {
                    fi10 = b.fI(parcel, fs);
                    continue;
                }
                case 15: {
                    fi11 = b.fI(parcel, fs);
                    continue;
                }
                case 16: {
                    fg = b.fG(parcel, fs);
                    continue;
                }
                case 17: {
                    fg2 = b.fG(parcel, fs);
                    continue;
                }
                case 18: {
                    latLngBounds = (LatLngBounds)b.fW(parcel, fs, (Parcelable$Creator)LatLngBounds.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new GoogleMapOptions(fn, fi, fi2, fn2, cameraPosition, fi3, fi4, fi5, fi6, fi7, fi8, fi9, fi10, fi11, fg, fg2, latLngBounds);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public GoogleMapOptions[] KW(final int n) {
        return new GoogleMapOptions[n];
    }
}
