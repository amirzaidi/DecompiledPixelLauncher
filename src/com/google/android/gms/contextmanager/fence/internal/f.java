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
    static void NW(final ContextFenceRegistrationStub contextFenceRegistrationStub, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, contextFenceRegistrationStub.OI());
        a.fo(parcel, 2, contextFenceRegistrationStub.OH(), false);
        a.eW(parcel, 3, (Parcelable)contextFenceRegistrationStub.OG(), n, false);
        a.fe(parcel, ey);
    }
    
    public ContextFenceRegistrationStub[] NV(final int n) {
        return new ContextFenceRegistrationStub[n];
    }
    
    public ContextFenceRegistrationStub NX(final Parcel parcel) {
        ContextFenceStub contextFenceStub = null;
        final int fj = b.fJ(parcel);
        int fn = 0;
        String fq = null;
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
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 3: {
                    contextFenceStub = (ContextFenceStub)b.fW(parcel, fs, ContextFenceStub.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new ContextFenceRegistrationStub(fn, fq, contextFenceStub);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
