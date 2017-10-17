// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import com.google.android.gms.common.internal.u;
import java.util.HashMap;
import java.util.Collections;
import java.util.Locale;
import java.util.TimeZone;
import java.util.Map;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import android.os.Bundle;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.net.Uri;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class i implements Parcelable$Creator
{
    static void DF(final PlaceEntity placeEntity, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fo(parcel, 1, placeEntity.getId(), false);
        a.eT(parcel, 2, placeEntity.Dx(), false);
        a.eW(parcel, 3, (Parcelable)placeEntity.Dn(), n, false);
        a.eW(parcel, 4, (Parcelable)placeEntity.Dz(), n, false);
        a.fs(parcel, 5, placeEntity.Dv());
        a.eW(parcel, 6, (Parcelable)placeEntity.Dl(), n, false);
        a.fo(parcel, 7, placeEntity.Dr(), false);
        a.fj(parcel, 1000, placeEntity.yx);
        a.eW(parcel, 8, (Parcelable)placeEntity.Dk(), n, false);
        a.fa(parcel, 9, placeEntity.Dy());
        a.fs(parcel, 10, placeEntity.Di());
        a.fj(parcel, 11, placeEntity.Dp());
        a.fw(parcel, 12, placeEntity.Dw());
        a.fb(parcel, 13, placeEntity.Dm(), false);
        a.fo(parcel, 14, (String)placeEntity.Ds(), false);
        a.fo(parcel, 15, (String)placeEntity.Dq(), false);
        a.fo(parcel, 16, placeEntity.Dj(), false);
        a.fr(parcel, 17, placeEntity.Du(), false);
        a.fo(parcel, 19, (String)placeEntity.Do(), false);
        a.fb(parcel, 20, placeEntity.Dt(), false);
        a.fe(parcel, ey);
    }
    
    public PlaceEntity DD(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        String fq = null;
        List fh = null;
        List fh2 = null;
        Bundle fp = null;
        String fq2 = null;
        String fq3 = null;
        String fq4 = null;
        String fq5 = null;
        List fr = null;
        LatLng latLng = null;
        float gj = 0.0f;
        LatLngBounds latLngBounds = null;
        String fq6 = null;
        Uri uri = null;
        boolean fx = false;
        float gj2 = 0.0f;
        int fn2 = 0;
        long fl = 0L;
        PlaceLocalization placeLocalization = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 2: {
                    fp = b.fP(parcel, fs);
                    continue;
                }
                case 3: {
                    placeLocalization = (PlaceLocalization)b.fW(parcel, fs, (Parcelable$Creator)PlaceLocalization.CREATOR);
                    continue;
                }
                case 4: {
                    latLng = (LatLng)b.fW(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 5: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
                case 6: {
                    latLngBounds = (LatLngBounds)b.fW(parcel, fs, (Parcelable$Creator)LatLngBounds.CREATOR);
                    continue;
                }
                case 7: {
                    fq6 = b.fQ(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 8: {
                    uri = (Uri)b.fW(parcel, fs, Uri.CREATOR);
                    continue;
                }
                case 9: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 10: {
                    gj2 = b.gj(parcel, fs);
                    continue;
                }
                case 11: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 12: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
                case 13: {
                    fh2 = b.fH(parcel, fs);
                    continue;
                }
                case 14: {
                    fq3 = b.fQ(parcel, fs);
                    continue;
                }
                case 15: {
                    fq4 = b.fQ(parcel, fs);
                    continue;
                }
                case 16: {
                    fq5 = b.fQ(parcel, fs);
                    continue;
                }
                case 17: {
                    fr = b.fR(parcel, fs);
                    continue;
                }
                case 19: {
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 20: {
                    fh = b.fH(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new PlaceEntity(fn, fq, fh, fh2, fp, fq2, fq3, fq4, fq5, fr, latLng, gj, latLngBounds, fq6, uri, fx, gj2, fn2, fl, placeLocalization);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public PlaceEntity[] DE(final int n) {
        return new PlaceEntity[n];
    }
}
