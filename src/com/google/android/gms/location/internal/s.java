// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class s implements Parcelable$Creator
{
    static void GH(final LocationRequestInternal locationRequestInternal, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hK(parcel, 1, (Parcelable)locationRequestInternal.Cu, n, false);
        a.hO(parcel, 4, locationRequestInternal.Ct);
        a.hQ(parcel, 5, locationRequestInternal.CA, false);
        a.ic(parcel, 6, locationRequestInternal.Cv, false);
        a.hO(parcel, 7, locationRequestInternal.Cw);
        a.hX(parcel, 1000, locationRequestInternal.Gh());
        a.hO(parcel, 8, locationRequestInternal.Cy);
        a.hS(parcel, hm);
    }
    
    public LocationRequestInternal GI(final Parcel parcel) {
        String ie = null;
        boolean il = false;
        final int ix = b.ix(parcel);
        boolean il2 = true;
        List list = LocationRequestInternal.Cz;
        boolean il3 = false;
        LocationRequest locationRequest = null;
        int ib = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    locationRequest = (LocationRequest)b.iK(parcel, ig, (Parcelable$Creator)LocationRequest.CREATOR);
                    continue;
                }
                case 4: {
                    il2 = b.iL(parcel, ig);
                    continue;
                }
                case 5: {
                    list = b.iN(parcel, ig, (Parcelable$Creator)ClientIdentity.CREATOR);
                    continue;
                }
                case 6: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 7: {
                    il3 = b.iL(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 8: {
                    il = b.iL(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new LocationRequestInternal(ib, locationRequest, il2, list, ie, il3, il);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public LocationRequestInternal[] GJ(final int n) {
        return new LocationRequestInternal[n];
    }
}
