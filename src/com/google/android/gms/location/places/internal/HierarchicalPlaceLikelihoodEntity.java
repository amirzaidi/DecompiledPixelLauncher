// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.Collections;
import java.util.List;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class HierarchicalPlaceLikelihoodEntity extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    public static final List yS;
    final PlaceEntity yO;
    final List yP;
    final int yQ;
    final int yR;
    final float yT;
    final float yU;
    
    static {
        yS = Collections.emptyList();
        CREATOR = (Parcelable$Creator)new c();
    }
    
    HierarchicalPlaceLikelihoodEntity(final int yq, final PlaceEntity yo, final float yt, final float yu, final int yr, final List yp) {
        this.yQ = yq;
        this.yO = yo;
        this.yT = yt;
        this.yU = yu;
        this.yR = yr;
        this.yP = yp;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof HierarchicalPlaceLikelihoodEntity) {
            final HierarchicalPlaceLikelihoodEntity hierarchicalPlaceLikelihoodEntity = (HierarchicalPlaceLikelihoodEntity)o;
            if (this.yO.equals(hierarchicalPlaceLikelihoodEntity.yO) || this.yT != hierarchicalPlaceLikelihoodEntity.yT || this.yU != hierarchicalPlaceLikelihoodEntity.yU || this.yR != hierarchicalPlaceLikelihoodEntity.yR || this.yP.equals(hierarchicalPlaceLikelihoodEntity.yP)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.yO, this.yT);
    }
    
    public String toString() {
        return u.hJ(this).hB("place", this.yO).hB("likelihood", this.yT).hB("hierarchyLikelihood", this.yU).hB("hierarchyLevel", this.yR).hB("containedPlaceIds", this.yP.toString()).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.CZ(this, parcel, n);
    }
}
