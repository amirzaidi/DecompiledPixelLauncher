// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal.safeparcel;

import android.os.Parcel;
import com.google.android.gms.common.internal.l;
import android.os.Parcelable$Creator;

public final class c
{
    public static SafeParcelable iY(final byte[] array, final Parcelable$Creator parcelable$Creator) {
        l.kh(parcelable$Creator);
        final Parcel obtain = Parcel.obtain();
        obtain.unmarshall(array, 0, array.length);
        obtain.setDataPosition(0);
        final SafeParcelable safeParcelable = (SafeParcelable)parcelable$Creator.createFromParcel(obtain);
        obtain.recycle();
        return safeParcelable;
    }
    
    public static byte[] iZ(final SafeParcelable safeParcelable) {
        final Parcel obtain = Parcel.obtain();
        safeParcelable.writeToParcel(obtain, 0);
        final byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }
}
