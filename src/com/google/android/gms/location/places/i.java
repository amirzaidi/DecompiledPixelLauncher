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
    static void EF(final AddPlaceRequest addPlaceRequest, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fo(parcel, 1, addPlaceRequest.DM(), false);
        a.eW(parcel, 2, (Parcelable)addPlaceRequest.DP(), n, false);
        a.fo(parcel, 3, addPlaceRequest.DL(), false);
        a.fb(parcel, 4, addPlaceRequest.DQ(), false);
        a.fo(parcel, 5, addPlaceRequest.DO(), false);
        a.eW(parcel, 6, (Parcelable)addPlaceRequest.DN(), n, false);
        a.fj(parcel, 1000, addPlaceRequest.zt);
        a.fe(parcel, ey);
    }
    
    public AddPlaceRequest[] ED(final int n) {
        return new AddPlaceRequest[n];
    }
    
    public AddPlaceRequest EE(final Parcel parcel) {
        Uri uri = null;
        final int fj = b.fJ(parcel);
        int fn = 0;
        String fq = null;
        List fh = null;
        String fq2 = null;
        LatLng latLng = null;
        String fq3 = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fq3 = b.fQ(parcel, fs);
                    continue;
                }
                case 2: {
                    latLng = (LatLng)b.fW(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 3: {
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 4: {
                    fh = b.fH(parcel, fs);
                    continue;
                }
                case 5: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 6: {
                    uri = (Uri)b.fW(parcel, fs, Uri.CREATOR);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new AddPlaceRequest(fn, fq3, latLng, fq2, fh, fq, uri);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
