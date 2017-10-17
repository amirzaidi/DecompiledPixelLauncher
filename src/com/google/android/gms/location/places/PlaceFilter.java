// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.u;
import java.util.Collections;
import java.util.Collection;
import java.util.List;
import java.util.Set;

public final class PlaceFilter extends AbstractPlaceFilter
{
    public static final c CREATOR;
    private static final PlaceFilter zl;
    private final Set zg;
    final List zh;
    final boolean zi;
    private final Set zj;
    final List zk;
    private final Set zm;
    final int zn;
    final List zo;
    
    static {
        CREATOR = new c();
        zl = new PlaceFilter();
    }
    
    public PlaceFilter() {
        this(false, null);
    }
    
    PlaceFilter(final int zn, final List list, final boolean zi, final List list2, final List list3) {
        this.zn = zn;
        List<Object> zh;
        if (list != null) {
            zh = Collections.unmodifiableList((List<?>)list);
        }
        else {
            zh = Collections.emptyList();
        }
        this.zh = zh;
        this.zi = zi;
        List<Object> zo;
        if (list3 != null) {
            zo = Collections.unmodifiableList((List<?>)list3);
        }
        else {
            zo = Collections.emptyList();
        }
        this.zo = zo;
        List<Object> zk;
        if (list2 != null) {
            zk = Collections.unmodifiableList((List<?>)list2);
        }
        else {
            zk = Collections.emptyList();
        }
        this.zk = zk;
        this.zm = AbstractPlaceFilter.Ei(this.zh);
        this.zj = AbstractPlaceFilter.Ei(this.zo);
        this.zg = AbstractPlaceFilter.Ei(this.zk);
    }
    
    public PlaceFilter(final Collection collection, final boolean b, final Collection collection2, final Collection collection3) {
        this(0, AbstractPlaceFilter.Ej(collection), b, AbstractPlaceFilter.Ej(collection2), AbstractPlaceFilter.Ej(collection3));
    }
    
    public PlaceFilter(final boolean b, final Collection collection) {
        this(null, b, collection, null);
    }
    
    public Set DJ() {
        return this.zg;
    }
    
    public Set DK() {
        return this.zm;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof PlaceFilter) {
            final PlaceFilter placeFilter = (PlaceFilter)o;
            if (this.zm.equals(placeFilter.zm) || this.zi != placeFilter.zi || !this.zj.equals(placeFilter.zj) || this.zg.equals(placeFilter.zg)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.zm, this.zi, this.zj, this.zg);
    }
    
    public String toString() {
        final n hj = u.hJ(this);
        if (!this.zm.isEmpty()) {
            hj.hB("types", this.zm);
        }
        hj.hB("requireOpenNow", this.zi);
        if (!this.zg.isEmpty()) {
            hj.hB("placeIds", this.zg);
        }
        if (!this.zj.isEmpty()) {
            hj.hB("requestedUserDataTypes", this.zj);
        }
        return hj.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.Ee(this, parcel, n);
    }
}
