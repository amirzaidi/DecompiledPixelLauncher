// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.auth.api.signin;

import java.util.ArrayList;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.accounts.Account;
import com.google.android.gms.common.api.Scope;
import android.os.Parcelable;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void PM(final GoogleSignInOptions googleSignInOptions, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, googleSignInOptions.JA);
        a.fc(parcel, 2, googleSignInOptions.PE(), false);
        a.eW(parcel, 3, (Parcelable)googleSignInOptions.getAccount(), n, false);
        a.fa(parcel, 4, googleSignInOptions.PI());
        a.fa(parcel, 5, googleSignInOptions.PH());
        a.fa(parcel, 6, googleSignInOptions.PJ());
        a.fo(parcel, 7, googleSignInOptions.PG(), false);
        a.fo(parcel, 8, googleSignInOptions.PF(), false);
        a.fe(parcel, ey);
    }
    
    public GoogleSignInOptions[] PK(final int n) {
        return new GoogleSignInOptions[n];
    }
    
    public GoogleSignInOptions PL(final Parcel parcel) {
        String fq = null;
        boolean fx = false;
        final int fj = com.google.android.gms.common.internal.safeparcel.b.fJ(parcel);
        String fq2 = null;
        boolean fx2 = false;
        boolean fx3 = false;
        Account account = null;
        ArrayList fz = null;
        int fn = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = com.google.android.gms.common.internal.safeparcel.b.fS(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.ga(fs)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = com.google.android.gms.common.internal.safeparcel.b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fz = com.google.android.gms.common.internal.safeparcel.b.fZ(parcel, fs, Scope.CREATOR);
                    continue;
                }
                case 3: {
                    account = (Account)com.google.android.gms.common.internal.safeparcel.b.fW(parcel, fs, Account.CREATOR);
                    continue;
                }
                case 4: {
                    fx3 = com.google.android.gms.common.internal.safeparcel.b.fX(parcel, fs);
                    continue;
                }
                case 5: {
                    fx2 = com.google.android.gms.common.internal.safeparcel.b.fX(parcel, fs);
                    continue;
                }
                case 6: {
                    fx = com.google.android.gms.common.internal.safeparcel.b.fX(parcel, fs);
                    continue;
                }
                case 7: {
                    fq2 = com.google.android.gms.common.internal.safeparcel.b.fQ(parcel, fs);
                    continue;
                }
                case 8: {
                    fq = com.google.android.gms.common.internal.safeparcel.b.fQ(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new GoogleSignInOptions(fn, fz, account, fx3, fx2, fx, fq2, fq);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
