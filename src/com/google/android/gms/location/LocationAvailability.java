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
    int BL;
    private final int BM;
    int BN;
    long BO;
    int BP;
    
    static {
        CREATOR = new h();
    }
    
    LocationAvailability(final int bm, final int bp, final int bl, final int bn, final long bo) {
        this.BM = bm;
        this.BP = bp;
        this.BL = bl;
        this.BN = bn;
        this.BO = bo;
    }
    
    public boolean Gx() {
        return this.BP < 1000;
    }
    
    int Gy() {
        return this.BM;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o instanceof LocationAvailability) {
            final LocationAvailability locationAvailability = (LocationAvailability)o;
            if (this.BP == locationAvailability.BP && this.BL == locationAvailability.BL && this.BN == locationAvailability.BN && this.BO == locationAvailability.BO) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.BP, this.BL, this.BN, this.BO);
    }
    
    public String toString() {
        return new StringBuilder(48).append("LocationAvailability[isLocationAvailable: ").append(this.Gx()).append("]").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.Hf(this, parcel, n);
    }
}
