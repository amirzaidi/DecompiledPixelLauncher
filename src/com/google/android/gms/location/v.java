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
    static void Ik(final ActivityRecognitionResult activityRecognitionResult, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fc(parcel, 1, activityRecognitionResult.Cp, false);
        a.fw(parcel, 2, activityRecognitionResult.Cs);
        a.fw(parcel, 3, activityRecognitionResult.Cq);
        a.fj(parcel, 4, activityRecognitionResult.Cr);
        a.eT(parcel, 5, activityRecognitionResult.Cn, false);
        a.fj(parcel, 1000, activityRecognitionResult.GJ());
        a.fe(parcel, ey);
    }
    
    public ActivityRecognitionResult createFromParcel(final Parcel parcel) {
        long fl = 0L;
        Bundle fp = null;
        int fn = 0;
        final int fj = b.fJ(parcel);
        long fl2 = fl;
        List fz = null;
        int fn2 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fz = b.fZ(parcel, fs, (Parcelable$Creator)DetectedActivity.CREATOR);
                    continue;
                }
                case 2: {
                    fl2 = b.fL(parcel, fs);
                    continue;
                }
                case 3: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
                case 4: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 5: {
                    fp = b.fP(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new ActivityRecognitionResult(fn2, fz, fl2, fl, fn, fp);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public ActivityRecognitionResult[] newArray(final int n) {
        return new ActivityRecognitionResult[n];
    }
}
