// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import java.util.List;
import android.os.Bundle;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class v implements Parcelable$Creator
{
    static void Jd(final ActivityRecognitionResult activityRecognitionResult, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hQ(parcel, 1, activityRecognitionResult.DU, false);
        a.ik(parcel, 2, activityRecognitionResult.DX);
        a.ik(parcel, 3, activityRecognitionResult.DV);
        a.hX(parcel, 4, activityRecognitionResult.DW);
        a.hH(parcel, 5, activityRecognitionResult.DS, false);
        a.hX(parcel, 1000, activityRecognitionResult.HC());
        a.hS(parcel, hm);
    }
    
    public ActivityRecognitionResult createFromParcel(final Parcel parcel) {
        long iz = 0L;
        Bundle id = null;
        int ib = 0;
        final int ix = b.ix(parcel);
        long iz2 = iz;
        List in = null;
        int ib2 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    in = b.iN(parcel, ig, (Parcelable$Creator)DetectedActivity.CREATOR);
                    continue;
                }
                case 2: {
                    iz2 = b.iz(parcel, ig);
                    continue;
                }
                case 3: {
                    iz = b.iz(parcel, ig);
                    continue;
                }
                case 4: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 5: {
                    id = b.iD(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new ActivityRecognitionResult(ib2, in, iz2, iz, ib, id);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public ActivityRecognitionResult[] newArray(final int n) {
        return new ActivityRecognitionResult[n];
    }
}
