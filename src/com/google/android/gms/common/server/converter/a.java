// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.converter;

import java.util.ArrayList;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.List;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void ll(final StringToIntConverter stringToIntConverter, final Parcel parcel, final int n) {
        final int ey = com.google.android.gms.common.internal.safeparcel.a.eY(parcel);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 1, stringToIntConverter.lk());
        com.google.android.gms.common.internal.safeparcel.a.fc(parcel, 2, stringToIntConverter.lj(), false);
        com.google.android.gms.common.internal.safeparcel.a.fe(parcel, ey);
    }
    
    public StringToIntConverter lm(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        ArrayList fz = null;
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
                    fz = b.fZ(parcel, fs, (Parcelable$Creator)StringToIntConverter$Entry.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new StringToIntConverter(fn, fz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public StringToIntConverter[] ln(final int n) {
        return new StringToIntConverter[n];
    }
}
