// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class LocationAvailability extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final h CREATOR;
    int Dq;
    private final int Dr;
    int Ds;
    long Dt;
    int Du;
    
    static {
        CREATOR = new h();
    }
    
    LocationAvailability(final int dr, final int du, final int dq, final int ds, final long dt) {
        this.Dr = dr;
        this.Du = du;
        this.Dq = dq;
        this.Ds = ds;
        this.Dt = dt;
    }
    
    public boolean Hq() {
        return this.Du < 1000;
    }
    
    int Hr() {
        return this.Dr;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o instanceof LocationAvailability) {
            final LocationAvailability locationAvailability = (LocationAvailability)o;
            if (this.Du == locationAvailability.Du && this.Dq == locationAvailability.Dq && this.Ds == locationAvailability.Ds && this.Dt == locationAvailability.Dt) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.Du, this.Dq, this.Ds, this.Dt);
    }
    
    public String toString() {
        return new StringBuilder(48).append("LocationAvailability[isLocationAvailable: ").append(this.Hq()).append("]").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.HY(this, parcel, n);
    }
}
