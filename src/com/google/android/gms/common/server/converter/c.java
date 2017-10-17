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
    static void lx(final StringToIntConverter$Entry stringToIntConverter$Entry, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, stringToIntConverter$Entry.ie);
        a.fo(parcel, 2, stringToIntConverter$Entry.if, false);
        a.fj(parcel, 3, stringToIntConverter$Entry.ig);
        a.fe(parcel, ey);
    }
    
    public StringToIntConverter$Entry[] lv(final int n) {
        return new StringToIntConverter$Entry[n];
    }
    
    public StringToIntConverter$Entry lw(final Parcel parcel) {
        int fn = 0;
        final int fj = b.fJ(parcel);
        String fq = null;
        int fn2 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 3: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new StringToIntConverter$Entry(fn2, fq, fn);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
