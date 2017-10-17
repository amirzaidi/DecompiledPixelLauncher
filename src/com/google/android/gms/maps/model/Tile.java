// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class Tile extends AbstractSafeParcelable
{
    public static final e CREATOR;
    private final int Fa;
    public final int Fb;
    public final int Fc;
    public final byte[] Fd;
    
    static {
        CREATOR = new e();
    }
    
    Tile(final int fa, final int fb, final int fc, final byte[] fd) {
        this.Fa = fa;
        this.Fb = fb;
        this.Fc = fc;
        this.Fd = fd;
    }
    
    public Tile(final int n, final int n2, final byte[] array) {
        this(1, n, n2, array);
    }
    
    int Kd() {
        return this.Fa;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.IS(this, parcel, n);
    }
}
