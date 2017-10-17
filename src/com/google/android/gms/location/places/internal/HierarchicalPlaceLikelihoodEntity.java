// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.Collections;
import android.os.Parcelable$Creator;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class HierarchicalPlaceLikelihoodEntity extends AbstractSafeParcelable
{
    public static final List Ax;
    public static final Parcelable$Creator CREATOR;
    final PlaceEntity At;
    final List Au;
    final int Av;
    final int Aw;
    final float Ay;
    final float Az;
    
    static {
        Ax = Collections.emptyList();
        CREATOR = (Parcelable$Creator)new c();
    }
    
    HierarchicalPlaceLikelihoodEntity(final int av, final PlaceEntity at, final float ay, final float az, final int aw, final List au) {
        this.Av = av;
        this.At = at;
        this.Ay = ay;
        this.Az = az;
        this.Aw = aw;
        this.Au = au;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof HierarchicalPlaceLikelihoodEntity) {
            final HierarchicalPlaceLikelihoodEntity hierarchicalPlaceLikelihoodEntity = (HierarchicalPlaceLikelihoodEntity)o;
            if (this.At.equals(hierarchicalPlaceLikelihoodEntity.At) || this.Ay != hierarchicalPlaceLikelihoodEntity.Ay || this.Az != hierarchicalPlaceLikelihoodEntity.Az || this.Aw != hierarchicalPlaceLikelihoodEntity.Aw || this.Au.equals(hierarchicalPlaceLikelihoodEntity.Au)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.At, this.Ay);
    }
    
    public String toString() {
        return u.kx(this).kp("place", this.At).kp("likelihood", this.Ay).kp("hierarchyLikelihood", this.Az).kp("hierarchyLevel", this.Aw).kp("containedPlaceIds", this.Au.toString()).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.DS(this, parcel, n);
    }
}
