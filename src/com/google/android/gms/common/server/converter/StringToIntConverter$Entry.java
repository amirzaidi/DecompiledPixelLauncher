// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class StringToIntConverter$Entry extends AbstractSafeParcelable
{
    public static final c CREATOR;
    final int ie;
    final String if;
    final int ig;
    
    static {
        CREATOR = new c();
    }
    
    StringToIntConverter$Entry(final int ie, final String if1, final int ig) {
        this.ie = ie;
        this.if = if1;
        this.ig = ig;
    }
    
    StringToIntConverter$Entry(final String if1, final int ig) {
        this.ie = 1;
        this.if = if1;
        this.ig = ig;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final c creator = StringToIntConverter$Entry.CREATOR;
        c.lx(this, parcel, n);
    }
}
