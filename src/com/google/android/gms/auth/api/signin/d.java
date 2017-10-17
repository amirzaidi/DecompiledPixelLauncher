// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.auth.api.signin;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.api.Scope;
import android.net.Uri;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class d implements Parcelable$Creator
{
    static void QJ(final GoogleSignInAccount googleSignInAccount, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, googleSignInAccount.KK);
        a.ic(parcel, 2, googleSignInAccount.getId(), false);
        a.ic(parcel, 3, googleSignInAccount.Qp(), false);
        a.ic(parcel, 4, googleSignInAccount.Qk(), false);
        a.ic(parcel, 5, googleSignInAccount.Qu(), false);
        a.hK(parcel, 6, (Parcelable)googleSignInAccount.Qm(), n, false);
        a.ic(parcel, 7, googleSignInAccount.Qi(), false);
        a.ik(parcel, 8, googleSignInAccount.Qj());
        a.ic(parcel, 9, googleSignInAccount.Qo(), false);
        a.hQ(parcel, 10, googleSignInAccount.KV, false);
        a.ic(parcel, 11, googleSignInAccount.Qh(), false);
        a.ic(parcel, 12, googleSignInAccount.Qt(), false);
        a.hS(parcel, hm);
    }
    
    public GoogleSignInAccount[] QH(final int n) {
        return new GoogleSignInAccount[n];
    }
    
    public GoogleSignInAccount QI(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        String ie = null;
        String ie2 = null;
        String ie3 = null;
        String ie4 = null;
        Uri uri = null;
        String ie5 = null;
        long iz = 0L;
        String ie6 = null;
        List in = null;
        String ie7 = null;
        String ie8 = null;
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
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 3: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 4: {
                    ie3 = b.iE(parcel, ig);
                    continue;
                }
                case 5: {
                    ie4 = b.iE(parcel, ig);
                    continue;
                }
                case 6: {
                    uri = (Uri)b.iK(parcel, ig, Uri.CREATOR);
                    continue;
                }
                case 7: {
                    ie5 = b.iE(parcel, ig);
                    continue;
                }
                case 8: {
                    iz = b.iz(parcel, ig);
                    continue;
                }
                case 9: {
                    ie6 = b.iE(parcel, ig);
                    continue;
                }
                case 10: {
                    in = b.iN(parcel, ig, Scope.CREATOR);
                    continue;
                }
                case 11: {
                    ie7 = b.iE(parcel, ig);
                    continue;
                }
                case 12: {
                    ie8 = b.iE(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new GoogleSignInAccount(ib, ie, ie2, ie3, ie4, uri, ie5, iz, ie6, in, ie7, ie8);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
