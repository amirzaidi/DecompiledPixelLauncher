// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.reporting;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class e implements Parcelable$Creator
{
    static void GP(final UploadRequestResult uploadRequestResult, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, uploadRequestResult.Hc());
        a.hX(parcel, 2, uploadRequestResult.Ha());
        a.ik(parcel, 3, uploadRequestResult.Hb());
        a.hS(parcel, hm);
    }
    
    public UploadRequestResult createFromParcel(final Parcel parcel) {
        int ib = 0;
        final int ix = b.ix(parcel);
        long iz = 0L;
        int ib2 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 3: {
                    iz = b.iz(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new UploadRequestResult(ib2, ib, iz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public UploadRequestResult[] newArray(final int n) {
        return new UploadRequestResult[n];
    }
}
