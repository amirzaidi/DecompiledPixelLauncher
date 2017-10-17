// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class f implements Parcelable$Creator
{
    static void Eh(final AutocompleteFilter autocompleteFilter, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fa(parcel, 1, autocompleteFilter.zz);
        a.fb(parcel, 2, autocompleteFilter.zx, false);
        a.fj(parcel, 1000, autocompleteFilter.zy);
        a.fe(parcel, ey);
    }
    
    public AutocompleteFilter Ef(final Parcel parcel) {
        boolean fx = false;
        final int fj = b.fJ(parcel);
        List fh = null;
        int fn = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 2: {
                    fh = b.fH(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new AutocompleteFilter(fn, fx, fh);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public AutocompleteFilter[] Eg(final int n) {
        return new AutocompleteFilter[n];
    }
}
