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
    static void Ey(final PlaceEntity placeEntity, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.ic(parcel, 1, placeEntity.getId(), false);
        a.hH(parcel, 2, placeEntity.Eq(), false);
        a.hK(parcel, 3, (Parcelable)placeEntity.Eg(), n, false);
        a.hK(parcel, 4, (Parcelable)placeEntity.Es(), n, false);
        a.ig(parcel, 5, placeEntity.Eo());
        a.hK(parcel, 6, (Parcelable)placeEntity.Ee(), n, false);
        a.ic(parcel, 7, placeEntity.Ek(), false);
        a.hX(parcel, 1000, placeEntity.Ac);
        a.hK(parcel, 8, (Parcelable)placeEntity.Ed(), n, false);
        a.hO(parcel, 9, placeEntity.Er());
        a.ig(parcel, 10, placeEntity.Eb());
        a.hX(parcel, 11, placeEntity.Ei());
        a.ik(parcel, 12, placeEntity.Ep());
        a.hP(parcel, 13, placeEntity.Ef(), false);
        a.ic(parcel, 14, (String)placeEntity.El(), false);
        a.ic(parcel, 15, (String)placeEntity.Ej(), false);
        a.ic(parcel, 16, placeEntity.Ec(), false);
        a.if(parcel, 17, placeEntity.En(), false);
        a.ic(parcel, 19, (String)placeEntity.Eh(), false);
        a.hP(parcel, 20, placeEntity.Em(), false);
        a.hS(parcel, hm);
    }
    
    public PlaceEntity Ew(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        String ie = null;
        List iv = null;
        List iv2 = null;
        Bundle id = null;
        String ie2 = null;
        String ie3 = null;
        String ie4 = null;
        String ie5 = null;
        List if1 = null;
        LatLng latLng = null;
        float ix2 = 0.0f;
        LatLngBounds latLngBounds = null;
        String ie6 = null;
        Uri uri = null;
        boolean il = false;
        float ix3 = 0.0f;
        int ib2 = 0;
        long iz = 0L;
        PlaceLocalization placeLocalization = null;
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
                    id = b.iD(parcel, ig);
                    continue;
                }
                case 3: {
                    placeLocalization = (PlaceLocalization)b.iK(parcel, ig, (Parcelable$Creator)PlaceLocalization.CREATOR);
                    continue;
                }
                case 4: {
                    latLng = (LatLng)b.iK(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 5: {
                    ix2 = b.iX(parcel, ig);
                    continue;
                }
                case 6: {
                    latLngBounds = (LatLngBounds)b.iK(parcel, ig, (Parcelable$Creator)LatLngBounds.CREATOR);
                    continue;
                }
                case 7: {
                    ie6 = b.iE(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 8: {
                    uri = (Uri)b.iK(parcel, ig, Uri.CREATOR);
                    continue;
                }
                case 9: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 10: {
                    ix3 = b.iX(parcel, ig);
                    continue;
                }
                case 11: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 12: {
                    iz = b.iz(parcel, ig);
                    continue;
                }
                case 13: {
                    iv2 = b.iv(parcel, ig);
                    continue;
                }
                case 14: {
                    ie3 = b.iE(parcel, ig);
                    continue;
                }
                case 15: {
                    ie4 = b.iE(parcel, ig);
                    continue;
                }
                case 16: {
                    ie5 = b.iE(parcel, ig);
                    continue;
                }
                case 17: {
                    if1 = b.iF(parcel, ig);
                    continue;
                }
                case 19: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 20: {
                    iv = b.iv(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new PlaceEntity(ib, ie, iv, iv2, id, ie2, ie3, ie4, ie5, if1, latLng, ix2, latLngBounds, ie6, uri, il, ix3, ib2, iz, placeLocalization);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public PlaceEntity[] Ex(final int n) {
        return new PlaceEntity[n];
    }
}
