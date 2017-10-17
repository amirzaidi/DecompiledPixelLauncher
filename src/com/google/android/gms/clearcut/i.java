// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.clearcut;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class i implements Parcelable$Creator
{
    static void ME(final LogEventParcelable logEventParcelable, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, logEventParcelable.Im);
        a.hK(parcel, 2, (Parcelable)logEventParcelable.Iv, n, false);
        a.ij(parcel, 3, logEventParcelable.Ip, false);
        a.ib(parcel, 4, logEventParcelable.Iq, false);
        a.hY(parcel, 5, logEventParcelable.In, false);
        a.ib(parcel, 6, logEventParcelable.It, false);
        a.hR(parcel, 7, logEventParcelable.Iu, false);
        a.hO(parcel, 8, logEventParcelable.Is);
        a.hS(parcel, hm);
    }
    
    public LogEventParcelable createFromParcel(final Parcel parcel) {
        byte[][] ip = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        boolean il = true;
        int[] iy = null;
        String[] ii = null;
        int[] iy2 = null;
        byte[] it = null;
        PlayLoggerContext playLoggerContext = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    playLoggerContext = (PlayLoggerContext)b.iK(parcel, ig, (Parcelable$Creator)PlayLoggerContext.CREATOR);
                    continue;
                }
                case 3: {
                    it = b.iT(parcel, ig);
                    continue;
                }
                case 4: {
                    iy2 = b.iy(parcel, ig);
                    continue;
                }
                case 5: {
                    ii = b.iI(parcel, ig);
                    continue;
                }
                case 6: {
                    iy = b.iy(parcel, ig);
                    continue;
                }
                case 7: {
                    ip = b.ip(parcel, ig);
                    continue;
                }
                case 8: {
                    il = b.iL(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new LogEventParcelable(ib, playLoggerContext, it, iy2, ii, iy, ip, il);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public LogEventParcelable[] newArray(final int n) {
        return new LogEventParcelable[n];
    }
}
