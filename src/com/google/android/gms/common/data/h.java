// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.data;

import android.os.Bundle;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.database.CursorWindow;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class h implements Parcelable$Creator
{
    static void ns(final DataHolder dataHolder, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fk(parcel, 1, dataHolder.nl(), false);
        a.fp(parcel, 2, (Parcelable[])dataHolder.nj(), n, false);
        a.fj(parcel, 3, dataHolder.ni());
        a.eT(parcel, 4, dataHolder.nh(), false);
        a.fj(parcel, 1000, dataHolder.ng());
        a.fe(parcel, ey);
    }
    
    public DataHolder nq(final Parcel parcel) {
        int fn = 0;
        Bundle fp = null;
        final int fj = b.fJ(parcel);
        CursorWindow[] array = null;
        String[] fu = null;
        int fn2 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fu = b.fU(parcel, fs);
                    continue;
                }
                case 2: {
                    array = (CursorWindow[])b.fM(parcel, fs, CursorWindow.CREATOR);
                    continue;
                }
                case 3: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 4: {
                    fp = b.fP(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            final DataHolder dataHolder = new DataHolder(fn2, fu, array, fn, fp);
            dataHolder.nk();
            return dataHolder;
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public DataHolder[] nr(final int n) {
        return new DataHolder[n];
    }
}
