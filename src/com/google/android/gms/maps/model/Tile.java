// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class Tile extends AbstractSafeParcelable
{
    public static final e CREATOR;
    private final int GF;
    public final int GG;
    public final int GH;
    public final byte[] GI;
    
    static {
        CREATOR = new e();
    }
    
    Tile(final int gf, final int gg, final int gh, final byte[] gi) {
        this.GF = gf;
        this.GG = gg;
        this.GH = gh;
        this.GI = gi;
    }
    
    public Tile(final int n, final int n2, final byte[] array) {
        this(1, n, n2, array);
    }
    
    int KW() {
        return this.GF;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.JL(this, parcel, n);
    }
}
