// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class f implements Parcelable$Creator
{
    static void OP(final ContextFenceRegistrationStub contextFenceRegistrationStub, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, contextFenceRegistrationStub.PB());
        a.ic(parcel, 2, contextFenceRegistrationStub.PA(), false);
        a.hK(parcel, 3, (Parcelable)contextFenceRegistrationStub.Pz(), n, false);
        a.hS(parcel, hm);
    }
    
    public ContextFenceRegistrationStub[] OO(final int n) {
        return new ContextFenceRegistrationStub[n];
    }
    
    public ContextFenceRegistrationStub OQ(final Parcel parcel) {
        ContextFenceStub contextFenceStub = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        String ie = null;
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
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 3: {
                    contextFenceStub = (ContextFenceStub)b.iK(parcel, ig, ContextFenceStub.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new ContextFenceRegistrationStub(ib, ie, contextFenceStub);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
