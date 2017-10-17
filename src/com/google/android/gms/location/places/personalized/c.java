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
    static void CM(final AliasedPlacesResult aliasedPlacesResult, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.eW(parcel, 1, (Parcelable)aliasedPlacesResult.dr(), n, false);
        a.fc(parcel, 2, aliasedPlacesResult.CG(), false);
        a.fj(parcel, 1000, aliasedPlacesResult.xI);
        a.fe(parcel, ey);
    }
    
    public AliasedPlacesResult[] CN(final int n) {
        return new AliasedPlacesResult[n];
    }
    
    public AliasedPlacesResult CO(final Parcel parcel) {
        Status status = null;
        final int fj = b.fJ(parcel);
        int fn = 0;
        ArrayList fz = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    break;
                }
                case 1: {
                    status = (Status)b.fW(parcel, fs, Status.CREATOR);
                    break;
                }
                case 2: {
                    fz = b.fZ(parcel, fs, (Parcelable$Creator)AliasedPlace.CREATOR);
                    break;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    break;
                }
            }
            final ArrayList list = fz;
            status = status;
            fz = list;
        }
        if (parcel.dataPosition() == fj) {
            return new AliasedPlacesResult(fn, status, fz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
