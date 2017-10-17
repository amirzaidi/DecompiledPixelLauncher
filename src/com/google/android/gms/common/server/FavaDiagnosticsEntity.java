// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server;

import android.os.Parcel;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final a CREATOR;
    public final int in;
    final int io;
    public final String ip;
    
    static {
        CREATOR = new a();
    }
    
    public FavaDiagnosticsEntity(final int io, final String ip, final int in) {
        this.io = io;
        this.ip = ip;
        this.in = in;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.ly(this, parcel, n);
    }
}
