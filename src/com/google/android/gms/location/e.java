// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class e implements Parcelable$Creator
{
    static void HF(final LocationSettingsStates locationSettingsStates, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hO(parcel, 1, locationSettingsStates.IB());
        a.hO(parcel, 2, locationSettingsStates.Iz());
        a.hO(parcel, 3, locationSettingsStates.ID());
        a.hO(parcel, 4, locationSettingsStates.Iy());
        a.hO(parcel, 5, locationSettingsStates.IC());
        a.hO(parcel, 6, locationSettingsStates.IE());
        a.hX(parcel, 1000, locationSettingsStates.IA());
        a.hS(parcel, hm);
    }
    
    public LocationSettingsStates HE(final Parcel parcel) {
        boolean il = false;
        final int ix = b.ix(parcel);
        boolean il2 = false;
        boolean il3 = false;
        boolean il4 = false;
        boolean il5 = false;
        boolean il6 = false;
        int ib = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    il6 = b.iL(parcel, ig);
                    continue;
                }
                case 2: {
                    il5 = b.iL(parcel, ig);
                    continue;
                }
                case 3: {
                    il4 = b.iL(parcel, ig);
                    continue;
                }
                case 4: {
                    il3 = b.iL(parcel, ig);
                    continue;
                }
                case 5: {
                    il2 = b.iL(parcel, ig);
                    continue;
                }
                case 6: {
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
            return new LocationSettingsStates(ib, il6, il5, il4, il3, il2, il);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public LocationSettingsStates[] HG(final int n) {
        return new LocationSettingsStates[n];
    }
}
