// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.content.Intent;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class h implements Parcelable$Creator
{
    static void Rj(final AuthAccountResult authAccountResult, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, authAccountResult.LI);
        a.hX(parcel, 2, authAccountResult.Re());
        a.hK(parcel, 3, (Parcelable)authAccountResult.Rd(), n, false);
        a.hS(parcel, hm);
    }
    
    public AuthAccountResult Rh(final Parcel parcel) {
        int ib = 0;
        final int ix = b.ix(parcel);
        Intent intent = null;
        int ib2 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 3: {
                    intent = (Intent)b.iK(parcel, ig, Intent.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new AuthAccountResult(ib2, ib, intent);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public AuthAccountResult[] Ri(final int n) {
        return new AuthAccountResult[n];
    }
}
