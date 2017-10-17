// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class NearbyLikelihoodEntity extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    final int AA;
    final PlaceEntity AB;
    final float AC;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    NearbyLikelihoodEntity(final int aa, final PlaceEntity ab, final float ac) {
        this.AA = aa;
        this.AB = ab;
        this.AC = ac;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof NearbyLikelihoodEntity) {
            final NearbyLikelihoodEntity nearbyLikelihoodEntity = (NearbyLikelihoodEntity)o;
            if (this.AB.equals(nearbyLikelihoodEntity.AB) || this.AC != nearbyLikelihoodEntity.AC) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.AB, this.AC);
    }
    
    public String toString() {
        return u.kx(this).kp("nearby place", this.AB).kp("likelihood", this.AC).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.DX(this, parcel, n);
    }
}
