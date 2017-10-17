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
    static void pm(final WebImage webImage, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, webImage.pt());
        a.hK(parcel, 2, (Parcelable)webImage.ps(), n, false);
        a.hX(parcel, 3, webImage.getWidth());
        a.hX(parcel, 4, webImage.getHeight());
        a.hS(parcel, hm);
    }
    
    public WebImage[] pl(final int n) {
        return new WebImage[n];
    }
    
    public WebImage pn(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        int ib2 = 0;
        int ib3 = 0;
        Uri uri = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    break;
                }
                case 1: {
                    ib2 = b.iB(parcel, ig);
                    break;
                }
                case 2: {
                    uri = (Uri)b.iK(parcel, ig, Uri.CREATOR);
                    break;
                }
                case 3: {
                    ib = b.iB(parcel, ig);
                    break;
                }
                case 4: {
                    ib3 = b.iB(parcel, ig);
                    break;
                }
            }
            ib3 = ib3;
        }
        if (parcel.dataPosition() == ix) {
            return new WebImage(ib2, uri, ib, ib3);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
