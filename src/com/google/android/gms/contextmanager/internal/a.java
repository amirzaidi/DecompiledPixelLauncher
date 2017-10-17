// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class a implements Parcelable$Creator
{
    static void MR(final RelationFilterImpl$Inclusion relationFilterImpl$Inclusion, final Parcel parcel, final int n) {
        final int hm = com.google.android.gms.common.internal.safeparcel.a.hM(parcel);
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 1, relationFilterImpl$Inclusion.MM());
        com.google.android.gms.common.internal.safeparcel.a.hX(parcel, 2, relationFilterImpl$Inclusion.ML());
        com.google.android.gms.common.internal.safeparcel.a.hK(parcel, 3, (Parcelable)relationFilterImpl$Inclusion.MJ(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.hK(parcel, 4, (Parcelable)relationFilterImpl$Inclusion.MK(), n, false);
        com.google.android.gms.common.internal.safeparcel.a.hS(parcel, hm);
    }
    
    public RelationFilterImpl$Inclusion MP(final Parcel parcel) {
        final int ix = b.ix(parcel);
        TimeFilterImpl timeFilterImpl = null;
        int ib = 0;
        int ib2 = 0;
        KeyFilterImpl keyFilterImpl = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            int n = 0;
            int n2 = 0;
            TimeFilterImpl timeFilterImpl3 = null;
            KeyFilterImpl keyFilterImpl3 = null;
            Label_0128: {
                switch (b.iO(ig)) {
                    default: {
                        b.io(parcel, ig);
                        break;
                    }
                    case 1: {
                        ib2 = b.iB(parcel, ig);
                        break;
                    }
                    case 2: {
                        ib = b.iB(parcel, ig);
                        break;
                    }
                    case 3: {
                        final TimeFilterImpl timeFilterImpl2 = (TimeFilterImpl)b.iK(parcel, ig, TimeFilterImpl.CREATOR);
                        n = ib;
                        n2 = ib2;
                        final KeyFilterImpl keyFilterImpl2 = keyFilterImpl;
                        timeFilterImpl3 = timeFilterImpl2;
                        keyFilterImpl3 = keyFilterImpl2;
                        break Label_0128;
                    }
                    case 4: {
                        keyFilterImpl3 = (KeyFilterImpl)b.iK(parcel, ig, KeyFilterImpl.CREATOR);
                        timeFilterImpl3 = timeFilterImpl;
                        n = ib;
                        n2 = ib2;
                        break Label_0128;
                    }
                }
                keyFilterImpl3 = keyFilterImpl;
                timeFilterImpl3 = timeFilterImpl;
                n = ib;
                n2 = ib2;
            }
            ib2 = n2;
            ib = n;
            timeFilterImpl = timeFilterImpl3;
            keyFilterImpl = keyFilterImpl3;
        }
        if (parcel.dataPosition() == ix) {
            return new RelationFilterImpl$Inclusion(ib2, ib, timeFilterImpl, keyFilterImpl);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public RelationFilterImpl$Inclusion[] MQ(final int n) {
        return new RelationFilterImpl$Inclusion[n];
    }
}
