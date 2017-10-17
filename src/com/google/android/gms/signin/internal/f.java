// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class f implements Parcelable$Creator
{
    static void QV(final CheckServerAuthResult checkServerAuthResult, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, checkServerAuthResult.Lu);
        a.hO(parcel, 2, checkServerAuthResult.Lv);
        a.hQ(parcel, 3, checkServerAuthResult.Lw, false);
        a.hS(parcel, hm);
    }
    
    public CheckServerAuthResult QW(final Parcel parcel) {
        boolean il = false;
        final int ix = b.ix(parcel);
        List in = null;
        int ib = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 3: {
                    in = b.iN(parcel, ig, Scope.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new CheckServerAuthResult(ib, il, in);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public CheckServerAuthResult[] QX(final int n) {
        return new CheckServerAuthResult[n];
    }
}
