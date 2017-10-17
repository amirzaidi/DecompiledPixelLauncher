// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class e implements Parcelable$Creator
{
    static void IS(final Tile tile, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, tile.Kd());
        a.fj(parcel, 2, tile.Fb);
        a.fj(parcel, 3, tile.Fc);
        a.fv(parcel, 4, tile.Fd, false);
        a.fe(parcel, ey);
    }
    
    public Tile[] IT(final int n) {
        return new Tile[n];
    }
    
    public Tile IU(final Parcel parcel) {
        int fn = 0;
        final int fj = b.fJ(parcel);
        byte[] gf = null;
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
                    gf = b.gf(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new Tile(fn3, fn2, fn, gf);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
