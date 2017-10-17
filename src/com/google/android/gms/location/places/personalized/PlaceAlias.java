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
    public static final PlaceAlias xN;
    public static final PlaceAlias xO;
    final int xP;
    private final String xQ;
    
    static {
        CREATOR = new b();
        xO = new PlaceAlias(0, "Home");
        xN = new PlaceAlias(0, "Work");
    }
    
    PlaceAlias(final int xp, final String xq) {
        this.xP = xp;
        this.xQ = xq;
    }
    
    public String CK() {
        return this.xQ;
    }
    
    public boolean equals(final Object o) {
        return this == o || (o instanceof PlaceAlias && u.hH(this.xQ, ((PlaceAlias)o).xQ));
    }
    
    public int hashCode() {
        return u.hI(this.xQ);
    }
    
    public String toString() {
        return u.hJ(this).hB("alias", this.xQ).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.CL(this, parcel, n);
    }
}
