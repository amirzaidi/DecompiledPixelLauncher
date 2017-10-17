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
    static void qf(final DataHolder dataHolder, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hY(parcel, 1, dataHolder.pY(), false);
        a.id(parcel, 2, (Parcelable[])dataHolder.pW(), n, false);
        a.hX(parcel, 3, dataHolder.pV());
        a.hH(parcel, 4, dataHolder.pU(), false);
        a.hX(parcel, 1000, dataHolder.pT());
        a.hS(parcel, hm);
    }
    
    public DataHolder qd(final Parcel parcel) {
        int ib = 0;
        Bundle id = null;
        final int ix = b.ix(parcel);
        CursorWindow[] array = null;
        String[] ii = null;
        int ib2 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ii = b.iI(parcel, ig);
                    continue;
                }
                case 2: {
                    array = (CursorWindow[])b.iA(parcel, ig, CursorWindow.CREATOR);
                    continue;
                }
                case 3: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 4: {
                    id = b.iD(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            final DataHolder dataHolder = new DataHolder(ib2, ii, array, ib, id);
            dataHolder.pX();
            return dataHolder;
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public DataHolder[] qe(final int n) {
        return new DataHolder[n];
    }
}
