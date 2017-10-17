// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.personalized;

import java.util.ArrayList;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import java.util.List;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class c implements Parcelable$Creator
{
    static void DF(final AliasedPlacesResult aliasedPlacesResult, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hK(parcel, 1, (Parcelable)aliasedPlacesResult.gV(), n, false);
        a.hQ(parcel, 2, aliasedPlacesResult.Dz(), false);
        a.hX(parcel, 1000, aliasedPlacesResult.zn);
        a.hS(parcel, hm);
    }
    
    public AliasedPlacesResult[] DG(final int n) {
        return new AliasedPlacesResult[n];
    }
    
    public AliasedPlacesResult DH(final Parcel parcel) {
        Status status = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        ArrayList in = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    break;
                }
                case 1: {
                    status = (Status)b.iK(parcel, ig, Status.CREATOR);
                    break;
                }
                case 2: {
                    in = b.iN(parcel, ig, (Parcelable$Creator)AliasedPlace.CREATOR);
                    break;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    break;
                }
            }
            final ArrayList list = in;
            status = status;
            in = list;
        }
        if (parcel.dataPosition() == ix) {
            return new AliasedPlacesResult(ib, status, in);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
