// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import java.util.ArrayList;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.contextmanager.Relation;
import com.google.android.gms.contextmanager.ContextData;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class b implements Parcelable$Creator
{
    static void Ma(final WriteBatchImpl writeBatchImpl, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, writeBatchImpl.Nb());
        a.fa(parcel, 2, writeBatchImpl.Na());
        a.fc(parcel, 3, writeBatchImpl.Nd(), false);
        a.fc(parcel, 4, writeBatchImpl.Nc(), false);
        a.fc(parcel, 5, writeBatchImpl.MZ(), false);
        a.fe(parcel, ey);
    }
    
    public WriteBatchImpl[] LZ(final int n) {
        return new WriteBatchImpl[n];
    }
    
    public WriteBatchImpl Mb(final Parcel parcel) {
        boolean fx = false;
        ArrayList fz = null;
        final int fj = com.google.android.gms.common.internal.safeparcel.b.fJ(parcel);
        ArrayList fz2 = null;
        ArrayList fz3 = null;
        int fn = 0;
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
                    fx = com.google.android.gms.common.internal.safeparcel.b.fX(parcel, fs);
                    continue;
                }
                case 3: {
                    fz3 = com.google.android.gms.common.internal.safeparcel.b.fZ(parcel, fs, ContextData.CREATOR);
                    continue;
                }
                case 4: {
                    fz2 = com.google.android.gms.common.internal.safeparcel.b.fZ(parcel, fs, Relation.CREATOR);
                    continue;
                }
                case 5: {
                    fz = com.google.android.gms.common.internal.safeparcel.b.fZ(parcel, fs, Relation.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new WriteBatchImpl(fn, fx, fz3, fz2, fz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
