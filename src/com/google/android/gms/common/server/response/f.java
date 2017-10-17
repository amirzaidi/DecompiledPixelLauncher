// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class f implements Parcelable$Creator
{
    static void nK(final FastJsonResponse$Field fastJsonResponse$Field, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, fastJsonResponse$Field.mW());
        a.hX(parcel, 2, fastJsonResponse$Field.nh());
        a.hO(parcel, 3, fastJsonResponse$Field.nc());
        a.hX(parcel, 4, fastJsonResponse$Field.mT());
        a.hO(parcel, 5, fastJsonResponse$Field.mV());
        a.ic(parcel, 6, fastJsonResponse$Field.nb(), false);
        a.hX(parcel, 7, fastJsonResponse$Field.mX());
        a.ic(parcel, 8, fastJsonResponse$Field.mU(), false);
        a.hK(parcel, 9, (Parcelable)fastJsonResponse$Field.mY(), n, false);
        a.hS(parcel, hm);
    }
    
    public FastJsonResponse$Field createFromParcel(final Parcel parcel) {
        ConverterWrapper converterWrapper = null;
        int ib = 0;
        final int ix = b.ix(parcel);
        String ie = null;
        String ie2 = null;
        boolean il = false;
        int ib2 = 0;
        boolean il2 = false;
        int ib3 = 0;
        int ib4 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib4 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
                case 3: {
                    il2 = b.iL(parcel, ig);
                    continue;
                }
                case 4: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 5: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 6: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 7: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 8: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 9: {
                    converterWrapper = (ConverterWrapper)b.iK(parcel, ig, (Parcelable$Creator)ConverterWrapper.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new FastJsonResponse$Field(ib4, ib3, il2, ib2, il, ie2, ib, ie, converterWrapper);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public FastJsonResponse$Field[] newArray(final int n) {
        return new FastJsonResponse$Field[n];
    }
}
