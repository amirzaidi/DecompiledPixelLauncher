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
    final int zp;
    private final String zq;
    private final List zr;
    
    static {
        CREATOR = new a();
    }
    
    AliasedPlace(final int zp, final String zq, final List zr) {
        this.zp = zp;
        this.zq = zq;
        this.zr = zr;
    }
    
    public String DA() {
        return this.zq;
    }
    
    public List DB() {
        return this.zr;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof AliasedPlace) {
            final AliasedPlace aliasedPlace = (AliasedPlace)o;
            if (!this.zq.equals(aliasedPlace.zq) || !this.zr.equals(aliasedPlace.zr)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.zq, this.zr);
    }
    
    public String toString() {
        return u.kx(this).kp("placeId", this.zq).kp("placeAliases", this.zr).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.DC(this, parcel, n);
    }
}
