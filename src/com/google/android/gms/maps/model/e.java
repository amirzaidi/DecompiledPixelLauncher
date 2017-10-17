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
    static void JL(final Tile tile, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, tile.KW());
        a.hX(parcel, 2, tile.GG);
        a.hX(parcel, 3, tile.GH);
        a.ij(parcel, 4, tile.GI, false);
        a.hS(parcel, hm);
    }
    
    public Tile[] JM(final int n) {
        return new Tile[n];
    }
    
    public Tile JN(final Parcel parcel) {
        int ib = 0;
        final int ix = b.ix(parcel);
        byte[] it = null;
        int ib2 = 0;
        int ib3 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 3: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 4: {
                    it = b.iT(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new Tile(ib3, ib2, ib, it);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
