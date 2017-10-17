// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void OU(final ContextData contextData, final Parcel parcel, final int n) {
        final int ey = com.google.android.gms.common.internal.safeparcel.a.eY(parcel);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 1, contextData.ON());
        com.google.android.gms.common.internal.safeparcel.a.fv(parcel, 2, contextData.OJ(), false);
        com.google.android.gms.common.internal.safeparcel.a.fe(parcel, ey);
    }
    
    public ContextData[] OT(final int n) {
        return new ContextData[n];
    }
    
    public ContextData OV(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        byte[] gf = null;
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
                    gf = b.gf(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new ContextData(fn, gf);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
