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
    static void np(final BitmapTeleporter bitmapTeleporter, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, bitmapTeleporter.jT);
        a.eW(parcel, 2, (Parcelable)bitmapTeleporter.jS, n, false);
        a.fj(parcel, 3, bitmapTeleporter.jW);
        a.fe(parcel, ey);
    }
    
    public BitmapTeleporter nn(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        int fn2 = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    parcelFileDescriptor = (ParcelFileDescriptor)b.fW(parcel, fs, ParcelFileDescriptor.CREATOR);
                    continue;
                }
                case 3: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new BitmapTeleporter(fn, parcelFileDescriptor, fn2);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public BitmapTeleporter[] no(final int n) {
        return new BitmapTeleporter[n];
    }
}
