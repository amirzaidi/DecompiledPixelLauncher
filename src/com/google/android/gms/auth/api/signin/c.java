// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.auth.api.signin;

import java.util.ArrayList;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.accounts.Account;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class c implements Parcelable$Creator
{
    static void QG(final GoogleSignInOptions googleSignInOptions, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, googleSignInOptions.Lf);
        a.hQ(parcel, 2, googleSignInOptions.Qx(), false);
        a.hK(parcel, 3, (Parcelable)googleSignInOptions.getAccount(), n, false);
        a.hO(parcel, 4, googleSignInOptions.QB());
        a.hO(parcel, 5, googleSignInOptions.QA());
        a.hO(parcel, 6, googleSignInOptions.QC());
        a.ic(parcel, 7, googleSignInOptions.Qz(), false);
        a.ic(parcel, 8, googleSignInOptions.Qy(), false);
        a.hS(parcel, hm);
    }
    
    public GoogleSignInOptions[] QE(final int n) {
        return new GoogleSignInOptions[n];
    }
    
    public GoogleSignInOptions QF(final Parcel parcel) {
        String ie = null;
        boolean il = false;
        final int ix = b.ix(parcel);
        String ie2 = null;
        boolean il2 = false;
        boolean il3 = false;
        Account account = null;
        ArrayList in = null;
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
                    in = b.iN(parcel, ig, Scope.CREATOR);
                    continue;
                }
                case 3: {
                    account = (Account)b.iK(parcel, ig, Account.CREATOR);
                    continue;
                }
                case 4: {
                    il3 = b.iL(parcel, ig);
                    continue;
                }
                case 5: {
                    il2 = b.iL(parcel, ig);
                    continue;
                }
                case 6: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 7: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 8: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new GoogleSignInOptions(ib, in, account, il3, il2, il, ie2, ie);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
