// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.net.Uri;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class i implements Parcelable$Creator
{
    static void Fy(final AddPlaceRequest addPlaceRequest, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.ic(parcel, 1, addPlaceRequest.EF(), false);
        a.hK(parcel, 2, (Parcelable)addPlaceRequest.EI(), n, false);
        a.ic(parcel, 3, addPlaceRequest.EE(), false);
        a.hP(parcel, 4, addPlaceRequest.EJ(), false);
        a.ic(parcel, 5, addPlaceRequest.EH(), false);
        a.hK(parcel, 6, (Parcelable)addPlaceRequest.EG(), n, false);
        a.hX(parcel, 1000, addPlaceRequest.AY);
        a.hS(parcel, hm);
    }
    
    public AddPlaceRequest[] Fw(final int n) {
        return new AddPlaceRequest[n];
    }
    
    public AddPlaceRequest Fx(final Parcel parcel) {
        Uri uri = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        String ie = null;
        List iv = null;
        String ie2 = null;
        LatLng latLng = null;
        String ie3 = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ie3 = b.iE(parcel, ig);
                    continue;
                }
                case 2: {
                    latLng = (LatLng)b.iK(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 3: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 4: {
                    iv = b.iv(parcel, ig);
                    continue;
                }
                case 5: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 6: {
                    uri = (Uri)b.iK(parcel, ig, Uri.CREATOR);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new AddPlaceRequest(ib, ie3, latLng, ie2, iv, ie, uri);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
