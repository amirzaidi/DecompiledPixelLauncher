// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void DO(final PlaceLikelihoodEntity placeLikelihoodEntity, final Parcel parcel, final int n) {
        final int hm = com.google.android.gms.common.internal.safeparcel.a.hM(parcel);
        com.google.android.gms.common.internal.safeparcel.a.hK(parcel, 1, (Parcelable)placeLikelihoodEntity.zM, n, false);
        com.google.android.gms.common.internal.safeparcel.a.ig(parcel, 2, placeLikelihoodEntity.zN);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 1000, placeLikelihoodEntity.zL);
        com.google.android.gms.common.internal.safeparcel.a.hS(parcel, hm);
    }
    
    public PlaceLikelihoodEntity DM(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        PlaceEntity placeEntity = null;
        float ix2 = 0.0f;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    placeEntity = (PlaceEntity)b.iK(parcel, ig, (Parcelable$Creator)PlaceEntity.CREATOR);
                    continue;
                }
                case 2: {
                    ix2 = b.iX(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new PlaceLikelihoodEntity(ib, placeEntity, ix2);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public PlaceLikelihoodEntity[] DN(final int n) {
        return new PlaceLikelihoodEntity[n];
    }
}
