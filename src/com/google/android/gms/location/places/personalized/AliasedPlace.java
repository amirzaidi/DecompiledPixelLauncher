// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.personalized;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class AliasedPlace extends AbstractSafeParcelable
{
    public static final a CREATOR;
    final int xK;
    private final String xL;
    private final List xM;
    
    static {
        CREATOR = new a();
    }
    
    AliasedPlace(final int xk, final String xl, final List xm) {
        this.xK = xk;
        this.xL = xl;
        this.xM = xm;
    }
    
    public String CH() {
        return this.xL;
    }
    
    public List CI() {
        return this.xM;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof AliasedPlace) {
            final AliasedPlace aliasedPlace = (AliasedPlace)o;
            if (!this.xL.equals(aliasedPlace.xL) || !this.xM.equals(aliasedPlace.xM)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.xL, this.xM);
    }
    
    public String toString() {
        return u.hJ(this).hB("placeId", this.xL).hB("placeAliases", this.xM).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.CJ(this, parcel, n);
    }
}
