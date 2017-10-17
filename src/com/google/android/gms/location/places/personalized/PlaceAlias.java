// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.personalized;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class PlaceAlias extends AbstractSafeParcelable
{
    public static final b CREATOR;
    public static final PlaceAlias zs;
    public static final PlaceAlias zt;
    final int zu;
    private final String zv;
    
    static {
        CREATOR = new b();
        zt = new PlaceAlias(0, "Home");
        zs = new PlaceAlias(0, "Work");
    }
    
    PlaceAlias(final int zu, final String zv) {
        this.zu = zu;
        this.zv = zv;
    }
    
    public String DD() {
        return this.zv;
    }
    
    public boolean equals(final Object o) {
        return this == o || (o instanceof PlaceAlias && u.kv(this.zv, ((PlaceAlias)o).zv));
    }
    
    public int hashCode() {
        return u.kw(this.zv);
    }
    
    public String toString() {
        return u.kx(this).kp("alias", this.zv).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.DE(this, parcel, n);
    }
}
