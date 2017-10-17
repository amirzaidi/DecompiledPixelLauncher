// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class g implements Parcelable$Creator
{
    static void qc(final BitmapTeleporter bitmapTeleporter, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, bitmapTeleporter.mL);
        a.hK(parcel, 2, (Parcelable)bitmapTeleporter.mK, n, false);
        a.hX(parcel, 3, bitmapTeleporter.mO);
        a.hS(parcel, hm);
    }
    
    public BitmapTeleporter qa(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        int ib2 = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    parcelFileDescriptor = (ParcelFileDescriptor)b.iK(parcel, ig, ParcelFileDescriptor.CREATOR);
                    continue;
                }
                case 3: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new BitmapTeleporter(ib, parcelFileDescriptor, ib2);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public BitmapTeleporter[] qb(final int n) {
        return new BitmapTeleporter[n];
    }
}
