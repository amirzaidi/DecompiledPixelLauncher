// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class h implements Parcelable$Creator
{
    static void DC(final AutocompletePredictionEntity autocompletePredictionEntity, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fo(parcel, 1, autocompletePredictionEntity.xZ, false);
        a.fo(parcel, 2, autocompletePredictionEntity.yc, false);
        a.fb(parcel, 3, autocompletePredictionEntity.xW, false);
        a.fc(parcel, 4, autocompletePredictionEntity.ye, false);
        a.fj(parcel, 5, autocompletePredictionEntity.xY);
        a.fo(parcel, 6, autocompletePredictionEntity.xV, false);
        a.fc(parcel, 7, autocompletePredictionEntity.yd, false);
        a.fj(parcel, 1000, autocompletePredictionEntity.yb);
        a.fo(parcel, 8, autocompletePredictionEntity.ya, false);
        a.fc(parcel, 9, autocompletePredictionEntity.xX, false);
        a.fe(parcel, ey);
    }
    
    public AutocompletePredictionEntity DA(final Parcel parcel) {
        int fn = 0;
        List fz = null;
        final int fj = b.fJ(parcel);
        String fq = null;
        List fz2 = null;
        String fq2 = null;
        List fz3 = null;
        String fq3 = null;
        List fh = null;
        String fq4 = null;
        int fn2 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fq3 = b.fQ(parcel, fs);
                    continue;
                }
                case 2: {
                    fq4 = b.fQ(parcel, fs);
                    continue;
                }
                case 3: {
                    fh = b.fH(parcel, fs);
                    continue;
                }
                case 4: {
                    fz3 = b.fZ(parcel, fs, AutocompletePredictionEntity$SubstringEntity.CREATOR);
                    continue;
                }
                case 5: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 6: {
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 7: {
                    fz2 = b.fZ(parcel, fs, AutocompletePredictionEntity$SubstringEntity.CREATOR);
                    continue;
                }
                case 1000: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 8: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 9: {
                    fz = b.fZ(parcel, fs, AutocompletePredictionEntity$SubstringEntity.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new AutocompletePredictionEntity(fn2, fq4, fh, fn, fq3, fz3, fq2, fz2, fq, fz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public AutocompletePredictionEntity[] DB(final int n) {
        return new AutocompletePredictionEntity[n];
    }
}
