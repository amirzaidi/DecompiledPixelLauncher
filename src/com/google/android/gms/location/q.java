// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import android.os.WorkSource;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class q implements Parcelable$Creator
{
    static void IT(final ActivityRecognitionRequest activityRecognitionRequest, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.ik(parcel, 1, activityRecognitionRequest.Hy());
        a.hO(parcel, 2, activityRecognitionRequest.Hz());
        a.hK(parcel, 3, (Parcelable)activityRecognitionRequest.Hx(), n, false);
        a.ic(parcel, 4, activityRecognitionRequest.getTag(), false);
        a.ib(parcel, 5, activityRecognitionRequest.HB(), false);
        a.hO(parcel, 6, activityRecognitionRequest.Hv());
        a.ic(parcel, 7, activityRecognitionRequest.Hw(), false);
        a.hX(parcel, 1000, activityRecognitionRequest.HA());
        a.hS(parcel, hm);
    }
    
    public ActivityRecognitionRequest IU(final Parcel parcel) {
        boolean il = false;
        String ie = null;
        final int ix = b.ix(parcel);
        long iz = 0L;
        int[] iy = null;
        String ie2 = null;
        WorkSource workSource = null;
        boolean il2 = false;
        int ib = 0;
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
                case 2: {
                    il2 = b.iL(parcel, ig);
                    continue;
                }
                case 3: {
                    workSource = (WorkSource)b.iK(parcel, ig, WorkSource.CREATOR);
                    continue;
                }
                case 4: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 5: {
                    iy = b.iy(parcel, ig);
                    continue;
                }
                case 6: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 7: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new ActivityRecognitionRequest(ib, iz, il2, workSource, ie2, iy, il, ie);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public ActivityRecognitionRequest[] IV(final int n) {
        return new ActivityRecognitionRequest[n];
    }
}
