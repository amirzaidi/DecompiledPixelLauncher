// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void LY(final RelationFilterImpl$Inclusion relationFilterImpl$Inclusion, final Parcel parcel, final int n) {
        final int ey = com.google.android.gms.common.internal.safeparcel.a.eY(parcel);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 1, relationFilterImpl$Inclusion.LT());
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 2, relationFilterImpl$Inclusion.LS());
        com.google.android.gms.common.internal.safeparcel.a.eW(parcel, 3, (Parcelable)relationFilterImpl$Inclusion.LQ(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.eW(parcel, 4, (Parcelable)relationFilterImpl$Inclusion.LR(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.fe(parcel, ey);
    }
    
    public RelationFilterImpl$Inclusion LW(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        TimeFilterImpl timeFilterImpl = null;
        int fn = 0;
        int fn2 = 0;
        KeyFilterImpl keyFilterImpl = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            int n = 0;
            int n2 = 0;
            TimeFilterImpl timeFilterImpl3 = null;
            KeyFilterImpl keyFilterImpl3 = null;
            Label_0128: {
                switch (b.ga(fs)) {
                    default: {
                        b.fA(parcel, fs);
                        break;
                    }
                    case 1: {
                        fn2 = b.fN(parcel, fs);
                        break;
                    }
                    case 2: {
                        fn = b.fN(parcel, fs);
                        break;
                    }
                    case 3: {
                        final TimeFilterImpl timeFilterImpl2 = (TimeFilterImpl)b.fW(parcel, fs, TimeFilterImpl.CREATOR);
                        n = fn;
                        n2 = fn2;
                        final KeyFilterImpl keyFilterImpl2 = keyFilterImpl;
                        timeFilterImpl3 = timeFilterImpl2;
                        keyFilterImpl3 = keyFilterImpl2;
                        break Label_0128;
                    }
                    case 4: {
                        keyFilterImpl3 = (KeyFilterImpl)b.fW(parcel, fs, KeyFilterImpl.CREATOR);
                        timeFilterImpl3 = timeFilterImpl;
                        n = fn;
                        n2 = fn2;
                        break Label_0128;
                    }
                }
                keyFilterImpl3 = keyFilterImpl;
                timeFilterImpl3 = timeFilterImpl;
                n = fn;
                n2 = fn2;
            }
            fn2 = n2;
            fn = n;
            timeFilterImpl = timeFilterImpl3;
            keyFilterImpl = keyFilterImpl3;
        }
        if (parcel.dataPosition() == fj) {
            return new RelationFilterImpl$Inclusion(fn2, fn, timeFilterImpl, keyFilterImpl);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public RelationFilterImpl$Inclusion[] LX(final int n) {
        return new RelationFilterImpl$Inclusion[n];
    }
}
