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

public class r implements Parcelable$Creator
{
    static void Lg(final PointOfInterest pointOfInterest, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, pointOfInterest.KS());
        a.hK(parcel, 2, (Parcelable)pointOfInterest.GE, n, false);
        a.ic(parcel, 3, pointOfInterest.GD, false);
        a.ic(parcel, 4, pointOfInterest.name, false);
        a.hS(parcel, hm);
    }
    
    public PointOfInterest Le(final Parcel parcel) {
        LatLng latLng = null;
        final int ix = b.ix(parcel);
        String ie = null;
        int ib = 0;
        String ie2 = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    break;
                }
                case 1: {
                    ib = b.iB(parcel, ig);
                    break;
                }
                case 2: {
                    latLng = (LatLng)b.iK(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                    break;
                }
                case 3: {
                    ie = b.iE(parcel, ig);
                    break;
                }
                case 4: {
                    ie2 = b.iE(parcel, ig);
                    break;
                }
            }
            final String s = ie2;
            final String s2 = ie;
            latLng = latLng;
            ie = s2;
            ie2 = s;
        }
        if (parcel.dataPosition() == ix) {
            return new PointOfInterest(ib, latLng, ie, ie2);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public PointOfInterest[] Lf(final int n) {
        return new PointOfInterest[n];
    }
}
