// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class f implements Parcelable$Creator
{
    static void Nh(final ContextDataFilterImpl$Inclusion contextDataFilterImpl$Inclusion, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, contextDataFilterImpl$Inclusion.Og());
        a.hX(parcel, 2, contextDataFilterImpl$Inclusion.Oh());
        a.hX(parcel, 3, contextDataFilterImpl$Inclusion.Of());
        a.hK(parcel, 4, (Parcelable)contextDataFilterImpl$Inclusion.Od(), n, false);
        a.hK(parcel, 5, (Parcelable)contextDataFilterImpl$Inclusion.Oe(), n, false);
        a.hS(parcel, hm);
    }
    
    public ContextDataFilterImpl$Inclusion[] Ng(final int n) {
        return new ContextDataFilterImpl$Inclusion[n];
    }
    
    public ContextDataFilterImpl$Inclusion Ni(final Parcel parcel) {
        KeyFilterImpl keyFilterImpl = null;
        int ib = 0;
        final int ix = b.ix(parcel);
        TimeFilterImpl timeFilterImpl = null;
        int ib2 = 0;
        int ib3 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 3: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 4: {
                    timeFilterImpl = (TimeFilterImpl)b.iK(parcel, ig, TimeFilterImpl.CREATOR);
                    continue;
                }
                case 5: {
                    keyFilterImpl = (KeyFilterImpl)b.iK(parcel, ig, KeyFilterImpl.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new ContextDataFilterImpl$Inclusion(ib3, ib2, ib, timeFilterImpl, keyFilterImpl);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
