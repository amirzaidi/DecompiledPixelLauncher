// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class g implements Parcelable$Creator
{
    static void DY(final PlaceLocalization placeLocalization, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.ic(parcel, 1, placeLocalization.name, false);
        a.ic(parcel, 2, placeLocalization.zP, false);
        a.ic(parcel, 3, placeLocalization.zR, false);
        a.ic(parcel, 4, placeLocalization.zQ, false);
        a.if(parcel, 5, placeLocalization.zS, false);
        a.hX(parcel, 1000, placeLocalization.zO);
        a.hS(parcel, hm);
    }
    
    public PlaceLocalization DZ(final Parcel parcel) {
        List if1 = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        String ie = null;
        String ie2 = null;
        String ie3 = null;
        String ie4 = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ie4 = b.iE(parcel, ig);
                    continue;
                }
                case 2: {
                    ie3 = b.iE(parcel, ig);
                    continue;
                }
                case 3: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 4: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 5: {
                    if1 = b.iF(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new PlaceLocalization(ib, ie4, ie3, ie2, ie, if1);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public PlaceLocalization[] Ea(final int n) {
        return new PlaceLocalization[n];
    }
}
