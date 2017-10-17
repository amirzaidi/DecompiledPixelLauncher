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
    static void Es(final PlacePhotoResult placePhotoResult, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.eW(parcel, 1, (Parcelable)placePhotoResult.dr(), n, false);
        a.eW(parcel, 2, (Parcelable)placePhotoResult.zR, n, false);
        a.fj(parcel, 1000, placePhotoResult.zS);
        a.fe(parcel, ey);
    }
    
    public PlacePhotoResult[] Et(final int n) {
        return new PlacePhotoResult[n];
    }
    
    public PlacePhotoResult Eu(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        Status status = null;
        int fn = 0;
        BitmapTeleporter bitmapTeleporter = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            int n = 0;
            BitmapTeleporter bitmapTeleporter2 = null;
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
                        bitmapTeleporter2 = bitmapTeleporter;
                        status4 = status3;
                        break Label_0124;
                    }
                    case 2: {
                        bitmapTeleporter2 = (BitmapTeleporter)b.fW(parcel, fs, BitmapTeleporter.CREATOR);
                        status4 = status;
                        n = fn;
                        break Label_0124;
                    }
                    case 1000: {
                        fn = b.fN(parcel, fs);
                        break;
                    }
                }
                bitmapTeleporter2 = bitmapTeleporter;
                status4 = status;
                n = fn;
            }
            fn = n;
            status = status4;
            bitmapTeleporter = bitmapTeleporter2;
        }
        if (parcel.dataPosition() == fj) {
            return new PlacePhotoResult(fn, status, bitmapTeleporter);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
