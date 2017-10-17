// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class c implements Parcelable$Creator
{
    static void EX(final PlaceFilter placeFilter, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hP(parcel, 1, placeFilter.AM, false);
        a.hO(parcel, 3, placeFilter.AN);
        a.hQ(parcel, 4, placeFilter.AT, false);
        a.if(parcel, 6, placeFilter.AP, false);
        a.hX(parcel, 1000, placeFilter.AS);
        a.hS(parcel, hm);
    }
    
    public PlaceFilter[] EV(final int n) {
        return new PlaceFilter[n];
    }
    
    public PlaceFilter EW(final Parcel parcel) {
        boolean il = false;
        List in = null;
        final int ix = b.ix(parcel);
        List if1 = null;
        List iv = null;
        int ib = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    iv = b.iv(parcel, ig);
                    continue;
                }
                case 3: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 4: {
                    in = b.iN(parcel, ig, (Parcelable$Creator)UserDataType.CREATOR);
                    continue;
                }
                case 6: {
                    if1 = b.iF(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new PlaceFilter(ib, iv, il, if1, in);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
