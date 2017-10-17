// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class StringToIntConverter$Entry extends AbstractSafeParcelable
{
    public static final c CREATOR;
    final int kW;
    final String kX;
    final int kY;
    
    static {
        CREATOR = new c();
    }
    
    StringToIntConverter$Entry(final int kw, final String kx, final int ky) {
        this.kW = kw;
        this.kX = kx;
        this.kY = ky;
    }
    
    StringToIntConverter$Entry(final String kx, final int ky) {
        this.kW = 1;
        this.kX = kx;
        this.kY = ky;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final c creator = StringToIntConverter$Entry.CREATOR;
        c.ol(this, parcel, n);
    }
}
