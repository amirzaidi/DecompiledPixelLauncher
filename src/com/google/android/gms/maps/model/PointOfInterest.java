// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class PointOfInterest extends AbstractSafeParcelable
{
    public static final r CREATOR;
    private final int GC;
    public final String GD;
    public final LatLng GE;
    public final String name;
    
    static {
        CREATOR = new r();
    }
    
    PointOfInterest(final int gc, final LatLng ge, final String gd, final String name) {
        this.GC = gc;
        this.GE = ge;
        this.GD = gd;
        this.name = name;
    }
    
    int KS() {
        return this.GC;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        r.Lg(this, parcel, n);
    }
}
