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
    static void CZ(final HierarchicalPlaceLikelihoodEntity hierarchicalPlaceLikelihoodEntity, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.eW(parcel, 1, (Parcelable)hierarchicalPlaceLikelihoodEntity.yO, n, false);
        a.fs(parcel, 2, hierarchicalPlaceLikelihoodEntity.yT);
        a.fs(parcel, 3, hierarchicalPlaceLikelihoodEntity.yU);
        a.fj(parcel, 4, hierarchicalPlaceLikelihoodEntity.yR);
        a.fr(parcel, 5, hierarchicalPlaceLikelihoodEntity.yP, false);
        a.fj(parcel, 1000, hierarchicalPlaceLikelihoodEntity.yQ);
        a.fe(parcel, ey);
    }
    
    public HierarchicalPlaceLikelihoodEntity Da(final Parcel parcel) {
        List fr = null;
        int fn = 0;
        float gj = 0.0f;
        final int fj = b.fJ(parcel);
        float gj2 = 0.0f;
        PlaceEntity placeEntity = null;
        int fn2 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    placeEntity = (PlaceEntity)b.fW(parcel, fs, (Parcelable$Creator)PlaceEntity.CREATOR);
                    continue;
                }
                case 2: {
                    gj2 = b.gj(parcel, fs);
                    continue;
                }
                case 3: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
                case 4: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 5: {
                    fr = b.fR(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new HierarchicalPlaceLikelihoodEntity(fn2, placeEntity, gj2, gj, fn, fr);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public HierarchicalPlaceLikelihoodEntity[] Db(final int n) {
        return new HierarchicalPlaceLikelihoodEntity[n];
    }
}
