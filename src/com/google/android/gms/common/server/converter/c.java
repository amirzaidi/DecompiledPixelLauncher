// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.converter;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class c implements Parcelable$Creator
{
    static void ol(final StringToIntConverter$Entry stringToIntConverter$Entry, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, stringToIntConverter$Entry.kW);
        a.ic(parcel, 2, stringToIntConverter$Entry.kX, false);
        a.hX(parcel, 3, stringToIntConverter$Entry.kY);
        a.hS(parcel, hm);
    }
    
    public StringToIntConverter$Entry[] oj(final int n) {
        return new StringToIntConverter$Entry[n];
    }
    
    public StringToIntConverter$Entry ok(final Parcel parcel) {
        int ib = 0;
        final int ix = b.ix(parcel);
        String ie = null;
        int ib2 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 3: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new StringToIntConverter$Entry(ib2, ie, ib);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
