// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class k implements Parcelable$Creator
{
    static void EJ(final PlacePhotoMetadataResult placePhotoMetadataResult, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.eW(parcel, 1, (Parcelable)placePhotoMetadataResult.dr(), n, false);
        a.eW(parcel, 2, (Parcelable)placePhotoMetadataResult.zV, n, false);
        a.fj(parcel, 1000, placePhotoMetadataResult.zU);
        a.fe(parcel, ey);
    }
    
    public PlacePhotoMetadataResult EK(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        Status status = null;
        int fn = 0;
        DataHolder dataHolder = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            int n = 0;
            DataHolder dataHolder2 = null;
            Status status4 = null;
            Label_0124: {
                switch (b.ga(fs)) {
                    default: {
                        b.fA(parcel, fs);
                        break;
                    }
                    case 1: {
                        final Status status2 = (Status)b.fW(parcel, fs, Status.CREATOR);
                        n = fn;
                        final Status status3 = status2;
                        dataHolder2 = dataHolder;
                        status4 = status3;
                        break Label_0124;
                    }
                    case 2: {
                        dataHolder2 = (DataHolder)b.fW(parcel, fs, DataHolder.CREATOR);
                        status4 = status;
                        n = fn;
                        break Label_0124;
                    }
                    case 1000: {
                        fn = b.fN(parcel, fs);
                        break;
                    }
                }
                dataHolder2 = dataHolder;
                status4 = status;
                n = fn;
            }
            fn = n;
            status = status4;
            dataHolder = dataHolder2;
        }
        if (parcel.dataPosition() == fj) {
            return new PlacePhotoMetadataResult(fn, status, dataHolder);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public PlacePhotoMetadataResult[] EL(final int n) {
        return new PlacePhotoMetadataResult[n];
    }
}
