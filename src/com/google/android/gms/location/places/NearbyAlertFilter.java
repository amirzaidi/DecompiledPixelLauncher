// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.u;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;

public final class NearbyAlertFilter extends AbstractPlaceFilter
{
    public static final b CREATOR;
    private final Set zH;
    final List zI;
    private final Set zJ;
    final List zK;
    private final Set zL;
    final int zM;
    final String zN;
    final List zO;
    final boolean zP;
    
    static {
        CREATOR = new b();
    }
    
    NearbyAlertFilter(final int zm, final List list, final List list2, final List list3, final String zn, final boolean zp) {
        this.zM = zm;
        List<Object> zi;
        if (list2 != null) {
            zi = Collections.unmodifiableList((List<?>)list2);
        }
        else {
            zi = Collections.emptyList();
        }
        this.zI = zi;
        List<Object> zo;
        if (list3 != null) {
            zo = Collections.unmodifiableList((List<?>)list3);
        }
        else {
            zo = Collections.emptyList();
        }
        this.zO = zo;
        List<Object> zk;
        if (list != null) {
            zk = Collections.unmodifiableList((List<?>)list);
        }
        else {
            zk = Collections.emptyList();
        }
        this.zK = zk;
        this.zL = AbstractPlaceFilter.Ei(this.zI);
        this.zJ = AbstractPlaceFilter.Ei(this.zO);
        this.zH = AbstractPlaceFilter.Ei(this.zK);
        this.zN = zn;
        this.zP = zp;
    }
    
    public static NearbyAlertFilter DW(final Collection collection) {
        if (collection != null && !collection.isEmpty()) {
            return new NearbyAlertFilter(0, AbstractPlaceFilter.Ej(collection), null, null, null, false);
        }
        throw new IllegalArgumentException("NearbyAlertFilters must contain at least oneplace ID to match results with.");
    }
    
    public static NearbyAlertFilter DY(final Collection collection) {
        if (collection != null && !collection.isEmpty()) {
            return new NearbyAlertFilter(0, null, AbstractPlaceFilter.Ej(collection), null, null, false);
        }
        throw new IllegalArgumentException("NearbyAlertFilters must contain at least oneplace type to match results with.");
    }
    
    public boolean DX() {
        return this.zP;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (!(o instanceof NearbyAlertFilter)) {
            return false;
        }
        final NearbyAlertFilter nearbyAlertFilter = (NearbyAlertFilter)o;
        if (this.zN == null && nearbyAlertFilter.zN != null) {
            return false;
        }
        if (this.zL.equals(nearbyAlertFilter.zL) && this.zJ.equals(nearbyAlertFilter.zJ) && this.zH.equals(nearbyAlertFilter.zH)) {
            if (this.zN == null || this.zN.equals(nearbyAlertFilter.zN)) {
                if (this.zP == nearbyAlertFilter.DX()) {
                    return b;
                }
            }
        }
        b = false;
        return b;
    }
    
    public int hashCode() {
        return u.hI(this.zL, this.zJ, this.zH, this.zN, this.zP);
    }
    
    public String toString() {
        final n hj = u.hJ(this);
        if (!this.zL.isEmpty()) {
            hj.hB("types", this.zL);
        }
        if (!this.zH.isEmpty()) {
            hj.hB("placeIds", this.zH);
        }
        if (!this.zJ.isEmpty()) {
            hj.hB("requestedUserDataTypes", this.zJ);
        }
        if (this.zN != null) {
            hj.hB("chainName", this.zN);
        }
        hj.hB("Beacon required: ", this.zP);
        return hj.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.Ea(this, parcel, n);
    }
}
