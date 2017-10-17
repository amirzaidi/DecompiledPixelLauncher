// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class s implements Parcelable$Creator
{
    static void If(final GestureRequest gestureRequest, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fb(parcel, 1, gestureRequest.HA(), false);
        a.fj(parcel, 1000, gestureRequest.HB());
        a.fe(parcel, ey);
    }
    
    public GestureRequest[] Id(final int n) {
        return new GestureRequest[n];
    }
    
    public GestureRequest Ie(final Parcel parcel) {
        final int fj = b.fJ(parcel);
        int fn = 0;
        List fh = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fh = b.fH(parcel, fs);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new GestureRequest(fn, fh);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
