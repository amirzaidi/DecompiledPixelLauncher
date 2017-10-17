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

public class c implements Parcelable$Creator
{
    static void Ee(final PlaceFilter placeFilter, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fb(parcel, 1, placeFilter.zh, false);
        a.fa(parcel, 3, placeFilter.zi);
        a.fc(parcel, 4, placeFilter.zo, false);
        a.fr(parcel, 6, placeFilter.zk, false);
        a.fj(parcel, 1000, placeFilter.zn);
        a.fe(parcel, ey);
    }
    
    public PlaceFilter[] Ec(final int n) {
        return new PlaceFilter[n];
    }
    
    public PlaceFilter Ed(final Parcel parcel) {
        boolean fx = false;
        List fz = null;
        final int fj = b.fJ(parcel);
        List fr = null;
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
                    fh = b.fH(parcel, fs);
                    continue;
                }
                case 3: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 4: {
                    fz = b.fZ(parcel, fs, (Parcelable$Creator)UserDataType.CREATOR);
                    continue;
                }
                case 6: {
                    fr = b.fR(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new PlaceFilter(fn, fh, fx, fr, fz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
