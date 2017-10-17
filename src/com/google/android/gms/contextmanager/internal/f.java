// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class f implements Parcelable$Creator
{
    static void Mo(final ContextDataFilterImpl$Inclusion contextDataFilterImpl$Inclusion, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, contextDataFilterImpl$Inclusion.Nn());
        a.fj(parcel, 2, contextDataFilterImpl$Inclusion.No());
        a.fj(parcel, 3, contextDataFilterImpl$Inclusion.Nm());
        a.eW(parcel, 4, (Parcelable)contextDataFilterImpl$Inclusion.Nk(), n, false);
        a.eW(parcel, 5, (Parcelable)contextDataFilterImpl$Inclusion.Nl(), n, false);
        a.fe(parcel, ey);
    }
    
    public ContextDataFilterImpl$Inclusion[] Mn(final int n) {
        return new ContextDataFilterImpl$Inclusion[n];
    }
    
    public ContextDataFilterImpl$Inclusion Mp(final Parcel parcel) {
        KeyFilterImpl keyFilterImpl = null;
        int fn = 0;
        final int fj = b.fJ(parcel);
        TimeFilterImpl timeFilterImpl = null;
        int fn2 = 0;
        int fn3 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 3: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 4: {
                    timeFilterImpl = (TimeFilterImpl)b.fW(parcel, fs, TimeFilterImpl.CREATOR);
                    continue;
                }
                case 5: {
                    keyFilterImpl = (KeyFilterImpl)b.fW(parcel, fs, KeyFilterImpl.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new ContextDataFilterImpl$Inclusion(fn3, fn2, fn, timeFilterImpl, keyFilterImpl);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
