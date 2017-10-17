// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class PointOfInterest extends AbstractSafeParcelable
{
    public static final r CREATOR;
    private final int EX;
    public final String EY;
    public final LatLng EZ;
    public final String name;
    
    static {
        CREATOR = new r();
    }
    
    PointOfInterest(final int ex, final LatLng ez, final String ey, final String name) {
        this.EX = ex;
        this.EZ = ez;
        this.EY = ey;
        this.name = name;
    }
    
    int JZ() {
        return this.EX;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        r.Kn(this, parcel, n);
    }
}
