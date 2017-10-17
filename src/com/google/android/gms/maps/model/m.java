// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import java.util.List;
import java.util.ArrayList;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class m implements Parcelable$Creator
{
    static void JQ(final PolygonOptions polygonOptions, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, polygonOptions.IO());
        a.fc(parcel, 2, polygonOptions.IR(), false);
        a.fg(parcel, 3, polygonOptions.IM(), false);
        a.fs(parcel, 4, polygonOptions.IL());
        a.fj(parcel, 5, polygonOptions.IP());
        a.fj(parcel, 6, polygonOptions.IQ());
        a.fs(parcel, 7, polygonOptions.IJ());
        a.fa(parcel, 8, polygonOptions.isVisible());
        a.fa(parcel, 9, polygonOptions.IK());
        a.fa(parcel, 10, polygonOptions.IN());
        a.fe(parcel, ey);
    }
    
    public PolygonOptions JP(final Parcel parcel) {
        float gj = 0.0f;
        boolean fx = false;
        final int fj = b.fJ(parcel);
        List fz = null;
        final ArrayList list = new ArrayList();
        boolean fx2 = false;
        boolean fx3 = false;
        int fn = 0;
        int fn2 = 0;
        float gj2 = 0.0f;
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
                    fz = b.fZ(parcel, fs, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 3: {
                    b.fD(parcel, fs, list, this.getClass().getClassLoader());
                    continue;
                }
                case 4: {
                    gj2 = b.gj(parcel, fs);
                    continue;
                }
                case 5: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 6: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 7: {
                    gj = b.gj(parcel, fs);
                    continue;
                }
                case 8: {
                    fx3 = b.fX(parcel, fs);
                    continue;
                }
                case 9: {
                    fx2 = b.fX(parcel, fs);
                    continue;
                }
                case 10: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new PolygonOptions(fn3, fz, list, gj2, fn2, fn, gj, fx3, fx2, fx);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public PolygonOptions[] JR(final int n) {
        return new PolygonOptions[n];
    }
}
