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
    static void Ia(final ActivityRecognitionRequest activityRecognitionRequest, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fw(parcel, 1, activityRecognitionRequest.GF());
        a.fa(parcel, 2, activityRecognitionRequest.GG());
        a.eW(parcel, 3, (Parcelable)activityRecognitionRequest.GE(), n, false);
        a.fo(parcel, 4, activityRecognitionRequest.getTag(), false);
        a.fn(parcel, 5, activityRecognitionRequest.GI(), false);
        a.fa(parcel, 6, activityRecognitionRequest.GC());
        a.fo(parcel, 7, activityRecognitionRequest.GD(), false);
        a.fj(parcel, 1000, activityRecognitionRequest.GH());
        a.fe(parcel, ey);
    }
    
    public ActivityRecognitionRequest Ib(final Parcel parcel) {
        boolean fx = false;
        String fq = null;
        final int fj = b.fJ(parcel);
        long fl = 0L;
        int[] fk = null;
        String fq2 = null;
        WorkSource workSource = null;
        boolean fx2 = false;
        int fn = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
                case 2: {
                    fx2 = b.fX(parcel, fs);
                    continue;
                }
                case 3: {
                    workSource = (WorkSource)b.fW(parcel, fs, WorkSource.CREATOR);
                    continue;
                }
                case 4: {
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 5: {
                    fk = b.fK(parcel, fs);
                    continue;
                }
                case 6: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 7: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new ActivityRecognitionRequest(fn, fl, fx2, workSource, fq2, fk, fx, fq);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public ActivityRecognitionRequest[] Ic(final int n) {
        return new ActivityRecognitionRequest[n];
    }
}
