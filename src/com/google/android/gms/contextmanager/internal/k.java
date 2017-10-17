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

public class k implements Parcelable$Creator
{
    static void Ne(final ContextDataFilterImpl contextDataFilterImpl, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, contextDataFilterImpl.Ms());
        a.fc(parcel, 2, contextDataFilterImpl.Mt(), false);
        a.fr(parcel, 3, contextDataFilterImpl.Mr(), false);
        a.eW(parcel, 4, (Parcelable)contextDataFilterImpl.Mq(), n, false);
        a.fe(parcel, ey);
    }
    
    public ContextDataFilterImpl Nf(final Parcel parcel) {
        QueryFilterParameters queryFilterParameters = null;
        final int fj = b.fJ(parcel);
        ArrayList fz = null;
        int fn = 0;
        ArrayList fr = null;
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
                    fz = b.fZ(parcel, fs, ContextDataFilterImpl$Inclusion.CREATOR);
                    continue;
                }
                case 3: {
                    fr = b.fR(parcel, fs);
                    continue;
                }
                case 4: {
                    queryFilterParameters = (QueryFilterParameters)b.fW(parcel, fs, QueryFilterParameters.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new ContextDataFilterImpl(fn, fz, fr, queryFilterParameters);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public ContextDataFilterImpl[] Ng(final int n) {
        return new ContextDataFilterImpl[n];
    }
}
