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
    private final Set Bm;
    final List Bn;
    private final Set Bo;
    final List Bp;
    private final Set Bq;
    final int Br;
    final String Bs;
    final List Bt;
    final boolean Bu;
    
    static {
        CREATOR = new b();
    }
    
    NearbyAlertFilter(final int br, final List list, final List list2, final List list3, final String bs, final boolean bu) {
        this.Br = br;
        List<Object> bn;
        if (list2 != null) {
            bn = Collections.unmodifiableList((List<?>)list2);
        }
        else {
            bn = Collections.emptyList();
        }
        this.Bn = bn;
        List<Object> bt;
        if (list3 != null) {
            bt = Collections.unmodifiableList((List<?>)list3);
        }
        else {
            bt = Collections.emptyList();
        }
        this.Bt = bt;
        List<Object> bp;
        if (list != null) {
            bp = Collections.unmodifiableList((List<?>)list);
        }
        else {
            bp = Collections.emptyList();
        }
        this.Bp = bp;
        this.Bq = AbstractPlaceFilter.Fb(this.Bn);
        this.Bo = AbstractPlaceFilter.Fb(this.Bt);
        this.Bm = AbstractPlaceFilter.Fb(this.Bp);
        this.Bs = bs;
        this.Bu = bu;
    }
    
    public static NearbyAlertFilter EP(final Collection collection) {
        if (collection != null && !collection.isEmpty()) {
            return new NearbyAlertFilter(0, AbstractPlaceFilter.Fc(collection), null, null, null, false);
        }
        throw new IllegalArgumentException("NearbyAlertFilters must contain at least oneplace ID to match results with.");
    }
    
    public static NearbyAlertFilter ER(final Collection collection) {
        if (collection != null && !collection.isEmpty()) {
            return new NearbyAlertFilter(0, null, AbstractPlaceFilter.Fc(collection), null, null, false);
        }
        throw new IllegalArgumentException("NearbyAlertFilters must contain at least oneplace type to match results with.");
    }
    
    public boolean EQ() {
        return this.Bu;
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
        if (this.Bs == null && nearbyAlertFilter.Bs != null) {
            return false;
        }
        if (this.Bq.equals(nearbyAlertFilter.Bq) && this.Bo.equals(nearbyAlertFilter.Bo) && this.Bm.equals(nearbyAlertFilter.Bm)) {
            if (this.Bs == null || this.Bs.equals(nearbyAlertFilter.Bs)) {
                if (this.Bu == nearbyAlertFilter.EQ()) {
                    return b;
                }
            }
        }
        b = false;
        return b;
    }
    
    public int hashCode() {
        return u.kw(this.Bq, this.Bo, this.Bm, this.Bs, this.Bu);
    }
    
    public String toString() {
        final n kx = u.kx(this);
        if (!this.Bq.isEmpty()) {
            kx.kp("types", this.Bq);
        }
        if (!this.Bm.isEmpty()) {
            kx.kp("placeIds", this.Bm);
        }
        if (!this.Bo.isEmpty()) {
            kx.kp("requestedUserDataTypes", this.Bo);
        }
        if (this.Bs != null) {
            kx.kp("chainName", this.Bs);
        }
        kx.kp("Beacon required: ", this.Bu);
        return kx.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.ET(this, parcel, n);
    }
}
