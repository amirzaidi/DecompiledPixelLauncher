// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class m implements Parcelable$Creator
{
    static void Gz(final NlpTestingRequest nlpTestingRequest, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.ik(parcel, 1, nlpTestingRequest.FL());
        a.hX(parcel, 1000, nlpTestingRequest.FM());
        a.hS(parcel, hm);
    }
    
    public NlpTestingRequest createFromParcel(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        long iz = 0L;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    iz = b.iz(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new NlpTestingRequest(ib, iz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public NlpTestingRequest[] newArray(final int n) {
        return new NlpTestingRequest[n];
    }
}
