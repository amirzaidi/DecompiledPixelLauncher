// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.IBinder;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class l implements Parcelable$Creator
{
    static void KG(final TileOverlayOptions tileOverlayOptions, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, tileOverlayOptions.JW());
        a.hT(parcel, 2, tileOverlayOptions.JU(), false);
        a.hO(parcel, 3, tileOverlayOptions.isVisible());
        a.ig(parcel, 4, tileOverlayOptions.JV());
        a.hO(parcel, 5, tileOverlayOptions.JR());
        a.ig(parcel, 6, tileOverlayOptions.JS());
        a.hS(parcel, hm);
    }
    
    public TileOverlayOptions[] KF(final int n) {
        return new TileOverlayOptions[n];
    }
    
    public TileOverlayOptions KH(final Parcel parcel) {
        boolean il = false;
        float ix = 0.0f;
        final int ix2 = b.ix(parcel);
        IBinder iv = null;
        boolean il2 = true;
        float ix3 = 0.0f;
        int ib = 0;
        while (parcel.dataPosition() < ix2) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    iv = b.iV(parcel, ig);
                    continue;
                }
                case 3: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 4: {
                    ix3 = b.iX(parcel, ig);
                    continue;
                }
                case 5: {
                    il2 = b.iL(parcel, ig);
                    continue;
                }
                case 6: {
                    ix = b.iX(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix2) {
            return new TileOverlayOptions(ib, iv, il, ix3, il2, ix);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix2).toString(), parcel);
    }
}
