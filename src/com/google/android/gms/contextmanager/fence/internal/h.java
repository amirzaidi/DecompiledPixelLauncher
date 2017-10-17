// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class h implements Parcelable$Creator
{
    static void OV(final FenceTriggerInfoImpl fenceTriggerInfoImpl, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, fenceTriggerInfoImpl.OH());
        a.hO(parcel, 2, fenceTriggerInfoImpl.OG());
        a.ic(parcel, 3, fenceTriggerInfoImpl.getKey(), false);
        a.hS(parcel, hm);
    }
    
    public FenceTriggerInfoImpl[] OU(final int n) {
        return new FenceTriggerInfoImpl[n];
    }
    
    public FenceTriggerInfoImpl OW(final Parcel parcel) {
        boolean il = false;
        final int ix = b.ix(parcel);
        String ie = null;
        int ib = 0;
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
                    il = b.iL(parcel, ig);
                    continue;
                }
                case 3: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new FenceTriggerInfoImpl(ib, il, ie);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
