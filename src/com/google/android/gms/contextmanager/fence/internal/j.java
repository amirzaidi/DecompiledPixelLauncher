// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class j implements Parcelable$Creator
{
    static void Pa(final ContextFenceStub contextFenceStub, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, contextFenceStub.Pp());
        a.ij(parcel, 2, contextFenceStub.Po(), false);
        a.hS(parcel, hm);
    }
    
    public ContextFenceStub OZ(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        byte[] it = null;
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
                    it = b.iT(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new ContextFenceStub(ib, it);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public ContextFenceStub[] Pb(final int n) {
        return new ContextFenceStub[n];
    }
}
