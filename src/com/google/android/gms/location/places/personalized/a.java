// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.personalized;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void CJ(final AliasedPlace aliasedPlace, final Parcel parcel, final int n) {
        final int ey = com.google.android.gms.common.internal.safeparcel.a.eY(parcel);
        com.google.android.gms.common.internal.safeparcel.a.fo(parcel, 1, aliasedPlace.CH(), false);
        com.google.android.gms.common.internal.safeparcel.a.fr(parcel, 2, aliasedPlace.CI(), false);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 1000, aliasedPlace.xK);
        com.google.android.gms.common.internal.safeparcel.a.fe(parcel, ey);
    }
    
    public AliasedPlace createFromParcel(final Parcel parcel) {
        List fr = null;
        final int fj = b.fJ(parcel);
        int fn = 0;
        String fq = null;
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
                    fr = b.fR(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new AliasedPlace(fn, fq, fr);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public AliasedPlace[] newArray(final int n) {
        return new AliasedPlace[n];
    }
}
