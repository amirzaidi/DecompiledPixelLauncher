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
    static void IY(final GestureRequest gestureRequest, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hP(parcel, 1, gestureRequest.It(), false);
        a.hX(parcel, 1000, gestureRequest.Iu());
        a.hS(parcel, hm);
    }
    
    public GestureRequest[] IW(final int n) {
        return new GestureRequest[n];
    }
    
    public GestureRequest IX(final Parcel parcel) {
        final int ix = b.ix(parcel);
        int ib = 0;
        List iv = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    iv = b.iv(parcel, ig);
                    continue;
                }
                case 1000: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new GestureRequest(ib, iv);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
}
