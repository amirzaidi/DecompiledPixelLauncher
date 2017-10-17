// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal.safeparcel;

import android.os.Parcel;

public class zza$zza extends RuntimeException
{
    public zza$zza(final String s, final Parcel parcel) {
        super(new StringBuilder(String.valueOf(s).length() + 41).append(s).append(" Parcel: pos=").append(parcel.dataPosition()).append(" size=").append(parcel.dataSize()).toString());
    }
}
