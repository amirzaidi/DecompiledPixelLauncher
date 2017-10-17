// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.reporting;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void FR(final ReportingState reportingState, final Parcel parcel, final int n) {
        final int ey = com.google.android.gms.common.internal.safeparcel.a.eY(parcel);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 1, reportingState.Gg());
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 2, reportingState.Gf());
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 3, reportingState.Gb());
        com.google.android.gms.common.internal.safeparcel.a.fa(parcel, 4, reportingState.FZ());
        com.google.android.gms.common.internal.safeparcel.a.fa(parcel, 5, reportingState.Ga());
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 7, reportingState.Ge());
        com.google.android.gms.common.internal.safeparcel.a.fi(parcel, 8, reportingState.FY(), false);
        com.google.android.gms.common.internal.safeparcel.a.fj(parcel, 9, reportingState.Gc());
        com.google.android.gms.common.internal.safeparcel.a.fa(parcel, 10, reportingState.Gd());
        com.google.android.gms.common.internal.safeparcel.a.fe(parcel, ey);
    }
    
    public ReportingState createFromParcel(final Parcel parcel) {
        boolean fx = false;
        final int fj = b.fJ(parcel);
        Integer fe = null;
        int fn = 0;
        int fn2 = 0;
        boolean fx2 = false;
        boolean fx3 = false;
        int fn3 = 0;
        int fn4 = 0;
        int fn5 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn5 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fn4 = b.fN(parcel, fs);
                    continue;
                }
                case 3: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 4: {
                    fx3 = b.fX(parcel, fs);
                    continue;
                }
                case 5: {
                    fx2 = b.fX(parcel, fs);
                    continue;
                }
                case 7: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 8: {
                    fe = b.fE(parcel, fs);
                    continue;
                }
                case 9: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 10: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new ReportingState(fn5, fn4, fn3, fx3, fx2, fn2, fn, fe, fx);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public ReportingState[] newArray(final int n) {
        return new ReportingState[n];
    }
}
