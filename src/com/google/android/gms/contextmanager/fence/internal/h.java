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
    static void Oc(final FenceTriggerInfoImpl fenceTriggerInfoImpl, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, fenceTriggerInfoImpl.NO());
        a.fa(parcel, 2, fenceTriggerInfoImpl.NN());
        a.fo(parcel, 3, fenceTriggerInfoImpl.getKey(), false);
        a.fe(parcel, ey);
    }
    
    public FenceTriggerInfoImpl[] Ob(final int n) {
        return new FenceTriggerInfoImpl[n];
    }
    
    public FenceTriggerInfoImpl Od(final Parcel parcel) {
        boolean fx = false;
        final int fj = b.fJ(parcel);
        String fq = null;
        int fn = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fx = b.fX(parcel, fs);
                    continue;
                }
                case 3: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new FenceTriggerInfoImpl(fn, fx, fq);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
