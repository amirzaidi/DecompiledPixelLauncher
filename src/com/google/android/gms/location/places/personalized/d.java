// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.personalized;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class d implements Parcelable$Creator
{
    static void DL(final PlaceUserData placeUserData, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.ic(parcel, 1, placeUserData.DI(), false);
        a.ic(parcel, 2, placeUserData.DJ(), false);
        a.hQ(parcel, 6, placeUserData.DK(), false);
        a.hX(parcel, 1000, placeUserData.zw);
        a.hS(parcel, hm);
    }
    
    public PlaceUserData createFromParcel(final Parcel parcel) {
        List in = null;
        final int ix = b.ix(parcel);
        String ie = null;
        int ib = 0;
        String ie2 = null;
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
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 6: {
                    in = b.iN(parcel, ig, (Parcelable$Creator)PlaceAlias.CREATOR);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new PlaceUserData(ib, ie, ie2, in);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public PlaceUserData[] newArray(final int n) {
        return new PlaceUserData[n];
    }
}
