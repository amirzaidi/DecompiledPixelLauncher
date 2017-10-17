// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import java.util.ArrayList;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class l implements Parcelable$Creator
{
    static void Nu(final RelationFilterImpl relationFilterImpl, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, relationFilterImpl.Nq());
        a.fc(parcel, 2, relationFilterImpl.Nr(), false);
        a.eW(parcel, 3, (Parcelable)relationFilterImpl.Np(), n, false);
        a.fe(parcel, ey);
    }
    
    public RelationFilterImpl[] Ns(final int n) {
        return new RelationFilterImpl[n];
    }
    
    public RelationFilterImpl Nt(final Parcel parcel) {
        QueryFilterParameters queryFilterParameters = null;
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
                    fz = b.fZ(parcel, fs, RelationFilterImpl$Inclusion.CREATOR);
                    continue;
                }
                case 3: {
                    queryFilterParameters = (QueryFilterParameters)b.fW(parcel, fs, QueryFilterParameters.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new RelationFilterImpl(fn, fz, queryFilterParameters);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
