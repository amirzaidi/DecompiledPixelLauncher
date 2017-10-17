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
    static void PQ(final GoogleSignInAccount googleSignInAccount, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, googleSignInAccount.Jf);
        a.fo(parcel, 2, googleSignInAccount.getId(), false);
        a.fo(parcel, 3, googleSignInAccount.Pw(), false);
        a.fo(parcel, 4, googleSignInAccount.Pr(), false);
        a.fo(parcel, 5, googleSignInAccount.PB(), false);
        a.eW(parcel, 6, (Parcelable)googleSignInAccount.Pt(), n, false);
        a.fo(parcel, 7, googleSignInAccount.Pp(), false);
        a.fw(parcel, 8, googleSignInAccount.Pq());
        a.fo(parcel, 9, googleSignInAccount.Pv(), false);
        a.fc(parcel, 10, googleSignInAccount.Jq, false);
        a.fo(parcel, 11, googleSignInAccount.Po(), false);
        a.fo(parcel, 12, googleSignInAccount.PA(), false);
        a.fe(parcel, ey);
    }
    
    public GoogleSignInAccount[] PO(final int n) {
        return new GoogleSignInAccount[n];
    }
    
    public GoogleSignInAccount PP(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        String fq = null;
        String fq2 = null;
        String fq3 = null;
        String fq4 = null;
        Uri uri = null;
        String fq5 = null;
        long fl = 0L;
        String fq6 = null;
        List fz = null;
        String fq7 = null;
        String fq8 = null;
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
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 3: {
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 4: {
                    fq3 = b.fQ(parcel, fs);
                    continue;
                }
                case 5: {
                    fq4 = b.fQ(parcel, fs);
                    continue;
                }
                case 6: {
                    uri = (Uri)b.fW(parcel, fs, Uri.CREATOR);
                    continue;
                }
                case 7: {
                    fq5 = b.fQ(parcel, fs);
                    continue;
                }
                case 8: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
                case 9: {
                    fq6 = b.fQ(parcel, fs);
                    continue;
                }
                case 10: {
                    fz = b.fZ(parcel, fs, Scope.CREATOR);
                    continue;
                }
                case 11: {
                    fq7 = b.fQ(parcel, fs);
                    continue;
                }
                case 12: {
                    fq8 = b.fQ(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new GoogleSignInAccount(fn, fq, fq2, fq3, fq4, uri, fq5, fl, fq6, fz, fq7, fq8);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
