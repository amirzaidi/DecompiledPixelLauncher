// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.playlog.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void PS(final PlayLoggerContext playLoggerContext, final Parcel parcel, final int n) {
        final int hm = com.google.android.gms.common.internal.safeparcel.a.hM(parcel);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 1, playLoggerContext.Kl);
        com.google.android.gms.common.internal.safeparcel.a.ic(parcel, 2, playLoggerContext.packageName, false);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 3, playLoggerContext.Kt);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 4, playLoggerContext.Kq);
        com.google.android.gms.common.internal.safeparcel.a.ic(parcel, 5, playLoggerContext.Ko, false);
        com.google.android.gms.common.internal.safeparcel.a.ic(parcel, 6, playLoggerContext.Kr, false);
        com.google.android.gms.common.internal.safeparcel.a.hO(parcel, 7, playLoggerContext.Kp);
        com.google.android.gms.common.internal.safeparcel.a.ic(parcel, 8, playLoggerContext.Km, false);
        com.google.android.gms.common.internal.safeparcel.a.hO(parcel, 9, playLoggerContext.Ks);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 10, playLoggerContext.Kn);
        com.google.android.gms.common.internal.safeparcel.a.hS(parcel, hm);
    }
    
    public PlayLoggerContext createFromParcel(final Parcel parcel) {
        String ie = null;
        int ib = 0;
        final int ix = b.ix(parcel);
        boolean il = true;
        boolean il2 = false;
        String ie2 = null;
        String ie3 = null;
        int ib2 = 0;
        int ib3 = 0;
        String ie4 = null;
        int ib4 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib4 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ie4 = b.iE(parcel, ig);
                    continue;
                }
                case 3: {
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
                case 4: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 5: {
                    ie3 = b.iE(parcel, ig);
                    continue;
                }
                case 6: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 7: {
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 8: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 9: {
                    il2 = b.iL(parcel, ig);
                    continue;
                }
                case 10: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new PlayLoggerContext(ib4, ie4, ib3, ib2, ie3, ie2, il, ie, il2, ib);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public PlayLoggerContext[] newArray(final int n) {
        return new PlayLoggerContext[n];
    }
}
