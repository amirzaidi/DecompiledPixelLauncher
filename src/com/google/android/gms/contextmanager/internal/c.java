// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class c implements Parcelable$Creator
{
    static void Mg(final ContextManagerClientInfo contextManagerClientInfo, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, contextManagerClientInfo.MD());
        a.fo(parcel, 2, contextManagerClientInfo.MC(), false);
        a.fo(parcel, 3, contextManagerClientInfo.getPackageName(), false);
        a.fj(parcel, 4, contextManagerClientInfo.ME());
        a.fo(parcel, 5, contextManagerClientInfo.MA(), false);
        a.fj(parcel, 6, contextManagerClientInfo.MB());
        a.fj(parcel, 7, contextManagerClientInfo.Mv());
        a.fo(parcel, 8, contextManagerClientInfo.Mw(), false);
        a.fo(parcel, 9, contextManagerClientInfo.My(), false);
        a.fj(parcel, 10, contextManagerClientInfo.Mx());
        a.fe(parcel, ey);
    }
    
    public ContextManagerClientInfo Me(final Parcel parcel) {
        String fq = null;
        int fn = 0;
        final int fj = b.fJ(parcel);
        String fq2 = null;
        int fn2 = 0;
        int fn3 = 0;
        String fq3 = null;
        int fn4 = 0;
        String fq4 = null;
        String fq5 = null;
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
                    fq5 = b.fQ(parcel, fs);
                    continue;
                }
                case 3: {
                    fq4 = b.fQ(parcel, fs);
                    continue;
                }
                case 4: {
                    fn4 = b.fN(parcel, fs);
                    continue;
                }
                case 5: {
                    fq3 = b.fQ(parcel, fs);
                    continue;
                }
                case 6: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 7: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 8: {
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 9: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 10: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new ContextManagerClientInfo(fn5, fq5, fq4, fn4, fq3, fn3, fn2, fq2, fq, fn);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public ContextManagerClientInfo[] Mf(final int n) {
        return new ContextManagerClientInfo[n];
    }
}
