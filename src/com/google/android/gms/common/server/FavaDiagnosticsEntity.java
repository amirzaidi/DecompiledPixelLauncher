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
    public final int lf;
    final int lg;
    public final String lh;
    
    static {
        CREATOR = new a();
    }
    
    public FavaDiagnosticsEntity(final int lg, final String lh, final int lf) {
        this.lg = lg;
        this.lh = lh;
        this.lf = lf;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.om(this, parcel, n);
    }
}
