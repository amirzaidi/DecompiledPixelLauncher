// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class c implements Parcelable$Creator
{
    static void DS(final HierarchicalPlaceLikelihoodEntity hierarchicalPlaceLikelihoodEntity, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hK(parcel, 1, (Parcelable)hierarchicalPlaceLikelihoodEntity.At, n, false);
        a.ig(parcel, 2, hierarchicalPlaceLikelihoodEntity.Ay);
        a.ig(parcel, 3, hierarchicalPlaceLikelihoodEntity.Az);
        a.hX(parcel, 4, hierarchicalPlaceLikelihoodEntity.Aw);
        a.if(parcel, 5, hierarchicalPlaceLikelihoodEntity.Au, false);
        a.hX(parcel, 1000, hierarchicalPlaceLikelihoodEntity.Av);
        a.hS(parcel, hm);
    }
    
    public HierarchicalPlaceLikelihoodEntity DT(final Parcel parcel) {
        List if1 = null;
        int ib = 0;
        float ix = 0.0f;
        final int ix2 = b.ix(parcel);
        float ix3 = 0.0f;
        PlaceEntity placeEntity = null;
        int ib2 = 0;
        while (parcel.dataPosition() < ix2) {
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
                    ix3 = b.iX(parcel, ig);
                    continue;
                }
                case 3: {
                    ix = b.iX(parcel, ig);
                    continue;
                }
                case 4: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 5: {
                    if1 = b.iF(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix2) {
            return new HierarchicalPlaceLikelihoodEntity(ib2, placeEntity, ix3, ix, ib, if1);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix2).toString(), parcel);
    }
    
    public HierarchicalPlaceLikelihoodEntity[] DU(final int n) {
        return new HierarchicalPlaceLikelihoodEntity[n];
    }
}
