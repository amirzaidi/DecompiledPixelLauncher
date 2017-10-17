// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class e implements Parcelable$Creator
{
    static void De(final NearbyLikelihoodEntity nearbyLikelihoodEntity, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.eW(parcel, 1, (Parcelable)nearbyLikelihoodEntity.yW, n, false);
        a.fs(parcel, 2, nearbyLikelihoodEntity.yX);
        a.fj(parcel, 1000, nearbyLikelihoodEntity.yV);
        a.fe(parcel, ey);
    }
    
    public NearbyLikelihoodEntity Dc(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        PlaceEntity placeEntity = null;
        float gj = 0.0f;
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
                    gj = b.gj(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new NearbyLikelihoodEntity(fn, placeEntity, gj);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public NearbyLikelihoodEntity[] Dd(final int n) {
        return new NearbyLikelihoodEntity[n];
    }
}
