// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.images;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.net.Uri;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class c implements Parcelable$Creator
{
    static void my(final WebImage webImage, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, webImage.mF());
        a.eW(parcel, 2, (Parcelable)webImage.mE(), n, false);
        a.fj(parcel, 3, webImage.getWidth());
        a.fj(parcel, 4, webImage.getHeight());
        a.fe(parcel, ey);
    }
    
    public WebImage[] mx(final int n) {
        return new WebImage[n];
    }
    
    public WebImage mz(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        int fn2 = 0;
        int fn3 = 0;
        Uri uri = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    break;
                }
                case 1: {
                    fn2 = b.fN(parcel, fs);
                    break;
                }
                case 2: {
                    uri = (Uri)b.fW(parcel, fs, Uri.CREATOR);
                    break;
                }
                case 3: {
                    fn = b.fN(parcel, fs);
                    break;
                }
                case 4: {
                    fn3 = b.fN(parcel, fs);
                    break;
                }
            }
            fn3 = fn3;
        }
        if (parcel.dataPosition() == fj) {
            return new WebImage(fn2, uri, fn, fn3);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
