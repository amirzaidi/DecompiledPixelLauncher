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
    static void DC(final AliasedPlace aliasedPlace, final Parcel parcel, final int n) {
        final int hm = com.google.android.gms.common.internal.safeparcel.a.hM(parcel);
        com.google.android.gms.common.internal.safeparcel.a.ic(parcel, 1, aliasedPlace.DA(), false);
        com.google.android.gms.common.internal.safeparcel.a.if(parcel, 2, aliasedPlace.DB(), false);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 1000, aliasedPlace.zp);
        com.google.android.gms.common.internal.safeparcel.a.hS(parcel, hm);
    }
    
    public AliasedPlace createFromParcel(final Parcel parcel) {
        List if1 = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        String ie = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 2: {
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
            return new AliasedPlace(ib, ie, if1);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public AliasedPlace[] newArray(final int n) {
        return new AliasedPlace[n];
    }
}
