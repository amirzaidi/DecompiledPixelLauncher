// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.personalized;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void DE(final PlaceAlias placeAlias, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.ic(parcel, 1, placeAlias.DD(), false);
        a.hX(parcel, 1000, placeAlias.zu);
        a.hS(parcel, hm);
    }
    
    public PlaceAlias createFromParcel(final Parcel parcel) {
        final int ix = com.google.android.gms.common.internal.safeparcel.b.ix(parcel);
        int ib = 0;
        String ie = null;
        while (parcel.dataPosition() < ix) {
            final int ig = com.google.android.gms.common.internal.safeparcel.b.iG(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.iO(ig)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ie = com.google.android.gms.common.internal.safeparcel.b.iE(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = com.google.android.gms.common.internal.safeparcel.b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new PlaceAlias(ib, ie);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public PlaceAlias[] newArray(final int n) {
        return new PlaceAlias[n];
    }
}
