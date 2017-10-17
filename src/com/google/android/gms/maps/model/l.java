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
    static void JN(final TileOverlayOptions tileOverlayOptions, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, tileOverlayOptions.Jd());
        a.ff(parcel, 2, tileOverlayOptions.Jb(), false);
        a.fa(parcel, 3, tileOverlayOptions.isVisible());
        a.fs(parcel, 4, tileOverlayOptions.Jc());
        a.fa(parcel, 5, tileOverlayOptions.IY());
        a.fs(parcel, 6, tileOverlayOptions.IZ());
        a.fe(parcel, ey);
    }
    
    public TileOverlayOptions[] JM(final int n) {
        return new TileOverlayOptions[n];
    }
    
    public TileOverlayOptions JO(final Parcel parcel) {
        boolean fx = false;
        float gj = 0.0f;
        final int fj = b.fJ(parcel);
        IBinder gh = null;
        boolean fx2 = true;
        float gj2 = 0.0f;
        int fn = 0;
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
                    gh = b.gh(parcel, fs);
                    continue;
                }
                case 3: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 4: {
                    gj2 = b.gj(parcel, fs);
                    continue;
                }
                case 5: {
                    fx2 = b.fX(parcel, fs);
                    continue;
                }
                case 6: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new TileOverlayOptions(fn, gh, fx, gj2, fx2, gj);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
