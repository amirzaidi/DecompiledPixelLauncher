// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class h implements Parcelable$Creator
{
    static void Ex(final UserDataType userDataType, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fo(parcel, 1, userDataType.zG, false);
        a.fj(parcel, 2, userDataType.zF);
        a.fj(parcel, 1000, userDataType.zE);
        a.fe(parcel, ey);
    }
    
    public UserDataType Ev(final Parcel parcel) {
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
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 2: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new UserDataType(fn2, fq, fn);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public UserDataType[] Ew(final int n) {
        return new UserDataType[n];
    }
}
