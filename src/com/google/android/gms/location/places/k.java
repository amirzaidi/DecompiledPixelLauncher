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
    static void FC(final PlacePhotoMetadataResult placePhotoMetadataResult, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hK(parcel, 1, (Parcelable)placePhotoMetadataResult.gV(), n, false);
        a.hK(parcel, 2, (Parcelable)placePhotoMetadataResult.BA, n, false);
        a.hX(parcel, 1000, placePhotoMetadataResult.Bz);
        a.hS(parcel, hm);
    }
    
    public PlacePhotoMetadataResult FD(final Parcel parcel) {
        final int ix = b.ix(parcel);
        Status status = null;
        int ib = 0;
        DataHolder dataHolder = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            int n = 0;
            DataHolder dataHolder2 = null;
            Status status4 = null;
            Label_0124: {
                switch (b.iO(ig)) {
                    default: {
                        b.io(parcel, ig);
                        break;
                    }
                    case 1: {
                        final Status status2 = (Status)b.iK(parcel, ig, Status.CREATOR);
                        n = ib;
                        final Status status3 = status2;
                        dataHolder2 = dataHolder;
                        status4 = status3;
                        break Label_0124;
                    }
                    case 2: {
                        dataHolder2 = (DataHolder)b.iK(parcel, ig, DataHolder.CREATOR);
                        status4 = status;
                        n = ib;
                        break Label_0124;
                    }
                    case 1000: {
                        ib = b.iB(parcel, ig);
                        break;
                    }
                }
                dataHolder2 = dataHolder;
                status4 = status;
                n = ib;
            }
            ib = n;
            status = status4;
            dataHolder = dataHolder2;
        }
        if (parcel.dataPosition() == ix) {
            return new PlacePhotoMetadataResult(ib, status, dataHolder);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public PlacePhotoMetadataResult[] FE(final int n) {
        return new PlacePhotoMetadataResult[n];
    }
}
