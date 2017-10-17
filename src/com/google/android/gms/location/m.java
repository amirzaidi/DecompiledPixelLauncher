// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class m implements Parcelable$Creator
{
    static void Iv(final LocationSettingsRequest locationSettingsRequest, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hQ(parcel, 1, locationSettingsRequest.Ir(), false);
        a.hO(parcel, 2, locationSettingsRequest.Ip());
        a.hO(parcel, 3, locationSettingsRequest.Iq());
        a.hX(parcel, 1000, locationSettingsRequest.Is());
        a.hS(parcel, hm);
    }
    
    public LocationSettingsRequest Iw(final Parcel parcel) {
        boolean il = false;
        final int ix = b.ix(parcel);
        List in = null;
        int ib = 0;
        boolean il2 = false;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    in = b.iN(parcel, ig, (Parcelable$Creator)LocationRequest.CREATOR);
                    continue;
                }
                case 2: {
                    il2 = b.iL(parcel, ig);
                    continue;
                }
                case 3: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new LocationSettingsRequest(ib, in, il2, il);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public LocationSettingsRequest[] Ix(final int n) {
        return new LocationSettingsRequest[n];
    }
}
