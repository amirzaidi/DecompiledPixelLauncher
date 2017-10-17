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
    static void KJ(final PolygonOptions polygonOptions, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, polygonOptions.JH());
        a.hQ(parcel, 2, polygonOptions.JK(), false);
        a.hU(parcel, 3, polygonOptions.JF(), false);
        a.ig(parcel, 4, polygonOptions.JE());
        a.hX(parcel, 5, polygonOptions.JI());
        a.hX(parcel, 6, polygonOptions.JJ());
        a.ig(parcel, 7, polygonOptions.JC());
        a.hO(parcel, 8, polygonOptions.isVisible());
        a.hO(parcel, 9, polygonOptions.JD());
        a.hO(parcel, 10, polygonOptions.JG());
        a.hS(parcel, hm);
    }
    
    public PolygonOptions KI(final Parcel parcel) {
        float ix = 0.0f;
        boolean il = false;
        final int ix2 = b.ix(parcel);
        List in = null;
        final ArrayList list = new ArrayList();
        boolean il2 = false;
        boolean il3 = false;
        int ib = 0;
        int ib2 = 0;
        float ix3 = 0.0f;
        int ib3 = 0;
        while (parcel.dataPosition() < ix2) {
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
                    in = b.iN(parcel, ig, (Parcelable$Creator)LatLng.CREATOR);
                    continue;
                }
                case 3: {
                    b.ir(parcel, ig, list, this.getClass().getClassLoader());
                    continue;
                }
                case 4: {
                    ix3 = b.iX(parcel, ig);
                    continue;
                }
                case 5: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 6: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 7: {
                    ix = b.iX(parcel, ig);
                    continue;
                }
                case 8: {
                    il3 = b.iL(parcel, ig);
                    continue;
                }
                case 9: {
                    il2 = b.iL(parcel, ig);
                    continue;
                }
                case 10: {
                    il = b.iL(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix2) {
            return new PolygonOptions(ib3, in, list, ix3, ib2, ib, ix, il3, il2, il);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix2).toString(), parcel);
    }
    
    public PolygonOptions[] KK(final int n) {
        return new PolygonOptions[n];
    }
}
