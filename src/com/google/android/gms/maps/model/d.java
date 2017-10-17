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
    static void IH(final MarkerOptions markerOptions, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, markerOptions.Jv());
        a.eW(parcel, 2, (Parcelable)markerOptions.JA(), n, false);
        a.fo(parcel, 3, markerOptions.getTitle(), false);
        a.fo(parcel, 4, markerOptions.Jq(), false);
        a.ff(parcel, 5, markerOptions.Jy(), false);
        a.fs(parcel, 6, markerOptions.Jw());
        a.fs(parcel, 7, markerOptions.Jr());
        a.fa(parcel, 8, markerOptions.JB());
        a.fa(parcel, 9, markerOptions.isVisible());
        a.fa(parcel, 10, markerOptions.Js());
        a.fs(parcel, 11, markerOptions.Ju());
        a.fs(parcel, 12, markerOptions.Jz());
        a.fs(parcel, 13, markerOptions.Jt());
        a.fs(parcel, 14, markerOptions.getAlpha());
        a.fs(parcel, 15, markerOptions.Jx());
        a.fe(parcel, ey);
    }
    
    public MarkerOptions IG(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        LatLng latLng = null;
        String fq = null;
        String fq2 = null;
        IBinder gh = null;
        float gj = 0.0f;
        float gj2 = 0.0f;
        boolean fx = false;
        boolean fx2 = false;
        boolean fx3 = false;
        float gj3 = 0.0f;
        float gj4 = 0.5f;
        float gj5 = 0.0f;
        float gj6 = 1.0f;
        float gj7 = 0.0f;
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
                    latLng = (LatLng)b.fW(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 3: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 4: {
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 5: {
                    gh = b.gh(parcel, fs);
                    continue;
                }
                case 6: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
                case 7: {
                    gj2 = b.gj(parcel, fs);
                    continue;
                }
                case 8: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 9: {
                    fx2 = b.fX(parcel, fs);
                    continue;
                }
                case 10: {
                    fx3 = b.fX(parcel, fs);
                    continue;
                }
                case 11: {
                    gj3 = b.gj(parcel, fs);
                    continue;
                }
                case 12: {
                    gj4 = b.gj(parcel, fs);
                    continue;
                }
                case 13: {
                    gj5 = b.gj(parcel, fs);
                    continue;
                }
                case 14: {
                    gj6 = b.gj(parcel, fs);
                    continue;
                }
                case 15: {
                    gj7 = b.gj(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new MarkerOptions(fn, latLng, fq, fq2, gh, gj, gj2, fx, fx2, fx3, gj3, gj4, gj5, gj6, gj7);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public MarkerOptions[] II(final int n) {
        return new MarkerOptions[n];
    }
}
