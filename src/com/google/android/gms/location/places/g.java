// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class g implements Parcelable$Creator
{
    static void Fl(final PlacePhotoResult placePhotoResult, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hK(parcel, 1, (Parcelable)placePhotoResult.gV(), n, false);
        a.hK(parcel, 2, (Parcelable)placePhotoResult.Bw, n, false);
        a.hX(parcel, 1000, placePhotoResult.Bx);
        a.hS(parcel, hm);
    }
    
    public PlacePhotoResult[] Fm(final int n) {
        return new PlacePhotoResult[n];
    }
    
    public PlacePhotoResult Fn(final Parcel parcel) {
        final int ix = b.ix(parcel);
        Status status = null;
        int ib = 0;
        BitmapTeleporter bitmapTeleporter = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            int n = 0;
            BitmapTeleporter bitmapTeleporter2 = null;
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
                        bitmapTeleporter2 = bitmapTeleporter;
                        status4 = status3;
                        break Label_0124;
                    }
                    case 2: {
                        bitmapTeleporter2 = (BitmapTeleporter)b.iK(parcel, ig, BitmapTeleporter.CREATOR);
                        status4 = status;
                        n = ib;
                        break Label_0124;
                    }
                    case 1000: {
                        ib = b.iB(parcel, ig);
                        break;
                    }
                }
                bitmapTeleporter2 = bitmapTeleporter;
                status4 = status;
                n = ib;
            }
            ib = n;
            status = status4;
            bitmapTeleporter = bitmapTeleporter2;
        }
        if (parcel.dataPosition() == ix) {
            return new PlacePhotoResult(ib, status, bitmapTeleporter);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
