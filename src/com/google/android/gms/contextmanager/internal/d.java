// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class d implements Parcelable$Creator
{
    static void Mi(final KeyFilterImpl$Inclusion keyFilterImpl$Inclusion, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, keyFilterImpl$Inclusion.LP());
        a.fk(parcel, 2, keyFilterImpl$Inclusion.LO(), false);
        a.fk(parcel, 3, keyFilterImpl$Inclusion.LM(), false);
        a.fk(parcel, 4, keyFilterImpl$Inclusion.LN(), false);
        a.fe(parcel, ey);
    }
    
    public KeyFilterImpl$Inclusion[] Mh(final int n) {
        return new KeyFilterImpl$Inclusion[n];
    }
    
    public KeyFilterImpl$Inclusion Mj(final Parcel parcel) {
        String[] fu = null;
        final int fj = b.fJ(parcel);
        String[] fu2 = null;
        int fn = 0;
        String[] fu3 = null;
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
                    fu2 = b.fU(parcel, fs);
                    continue;
                }
                case 3: {
                    fu3 = b.fU(parcel, fs);
                    continue;
                }
                case 4: {
                    fu = b.fU(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new KeyFilterImpl$Inclusion(fn, fu2, fu3, fu);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
