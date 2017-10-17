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
    static void Qq(final AuthAccountResult authAccountResult, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, authAccountResult.Kd);
        a.fj(parcel, 2, authAccountResult.Ql());
        a.eW(parcel, 3, (Parcelable)authAccountResult.Qk(), n, false);
        a.fe(parcel, ey);
    }
    
    public AuthAccountResult Qo(final Parcel parcel) {
        int fn = 0;
        final int fj = b.fJ(parcel);
        Intent intent = null;
        int fn2 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 3: {
                    intent = (Intent)b.fW(parcel, fs, Intent.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new AuthAccountResult(fn2, fn, intent);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public AuthAccountResult[] Qp(final int n) {
        return new AuthAccountResult[n];
    }
}
