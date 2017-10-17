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
    static void GK(final ReportingState reportingState, final Parcel parcel, final int n) {
        final int hm = com.google.android.gms.common.internal.safeparcel.a.hM(parcel);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 1, reportingState.GZ());
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 2, reportingState.GY());
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 3, reportingState.GU());
        com.google.android.gms.common.internal.safeparcel.a.hO(parcel, 4, reportingState.GS());
        com.google.android.gms.common.internal.safeparcel.a.hO(parcel, 5, reportingState.GT());
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 7, reportingState.GX());
        com.google.android.gms.common.internal.safeparcel.a.hW(parcel, 8, reportingState.GR(), false);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 9, reportingState.GV());
        com.google.android.gms.common.internal.safeparcel.a.hO(parcel, 10, reportingState.GW());
        com.google.android.gms.common.internal.safeparcel.a.hS(parcel, hm);
    }
    
    public ReportingState createFromParcel(final Parcel parcel) {
        boolean il = false;
        final int ix = b.ix(parcel);
        Integer is = null;
        int ib = 0;
        int ib2 = 0;
        boolean il2 = false;
        boolean il3 = false;
        int ib3 = 0;
        int ib4 = 0;
        int ib5 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib5 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ib4 = b.iB(parcel, ig);
                    continue;
                }
                case 3: {
                    ib3 = b.iB(parcel, ig);
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
                case 7: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 8: {
                    is = b.is(parcel, ig);
                    continue;
                }
                case 9: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 10: {
                    il = b.iL(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new ReportingState(ib5, ib4, ib3, il3, il2, ib2, ib, is, il);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public ReportingState[] newArray(final int n) {
        return new ReportingState[n];
    }
}
