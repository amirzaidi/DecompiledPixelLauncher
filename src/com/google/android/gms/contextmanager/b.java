// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void OX(final Relation relation, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, relation.OS());
        a.fv(parcel, 2, relation.OQ(), false);
        a.fe(parcel, ey);
    }
    
    public Relation[] OW(final int n) {
        return new Relation[n];
    }
    
    public Relation OY(final Parcel parcel) {
        final int fj = com.google.android.gms.common.internal.safeparcel.b.fJ(parcel);
        int fn = 0;
        byte[] gf = null;
        while (parcel.dataPosition() < fj) {
            final int fs = com.google.android.gms.common.internal.safeparcel.b.fS(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.b.ga(fs)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = com.google.android.gms.common.internal.safeparcel.b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    gf = com.google.android.gms.common.internal.safeparcel.b.gf(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new Relation(fn, gf);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
