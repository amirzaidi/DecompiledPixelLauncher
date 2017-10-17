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
    static void Fa(final AutocompleteFilter autocompleteFilter, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hO(parcel, 1, autocompleteFilter.Be);
        a.hP(parcel, 2, autocompleteFilter.Bc, false);
        a.hX(parcel, 1000, autocompleteFilter.Bd);
        a.hS(parcel, hm);
    }
    
    public AutocompleteFilter EY(final Parcel parcel) {
        boolean il = false;
        final int ix = b.ix(parcel);
        List iv = null;
        int ib = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 2: {
                    iv = b.iv(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new AutocompleteFilter(ib, il, iv);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public AutocompleteFilter[] EZ(final int n) {
        return new AutocompleteFilter[n];
    }
}
