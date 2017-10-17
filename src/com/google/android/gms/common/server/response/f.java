// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class f implements Parcelable$Creator
{
    static void kQ(final FastJsonResponse$Field fastJsonResponse$Field, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, fastJsonResponse$Field.ki());
        a.fj(parcel, 2, fastJsonResponse$Field.kt());
        a.fa(parcel, 3, fastJsonResponse$Field.ko());
        a.fj(parcel, 4, fastJsonResponse$Field.kf());
        a.fa(parcel, 5, fastJsonResponse$Field.kh());
        a.fo(parcel, 6, fastJsonResponse$Field.kn(), false);
        a.fj(parcel, 7, fastJsonResponse$Field.kj());
        a.fo(parcel, 8, fastJsonResponse$Field.kg(), false);
        a.eW(parcel, 9, (Parcelable)fastJsonResponse$Field.kk(), n, false);
        a.fe(parcel, ey);
    }
    
    public FastJsonResponse$Field createFromParcel(final Parcel parcel) {
        ConverterWrapper converterWrapper = null;
        int fn = 0;
        final int fj = b.fJ(parcel);
        String fq = null;
        String fq2 = null;
        boolean fx = false;
        int fn2 = 0;
        boolean fx2 = false;
        int fn3 = 0;
        int fn4 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn4 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 3: {
                    fx2 = b.fX(parcel, fs);
                    continue;
                }
                case 4: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 5: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 6: {
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 7: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 8: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 9: {
                    converterWrapper = (ConverterWrapper)b.fW(parcel, fs, (Parcelable$Creator)ConverterWrapper.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new FastJsonResponse$Field(fn4, fn3, fx2, fn2, fx, fq2, fn, fq, converterWrapper);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public FastJsonResponse$Field[] newArray(final int n) {
        return new FastJsonResponse$Field[n];
    }
}
