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
    private static final PlaceFilter AQ;
    public static final c CREATOR;
    private final Set AL;
    final List AM;
    final boolean AN;
    private final Set AO;
    final List AP;
    private final Set AR;
    final int AS;
    final List AT;
    
    static {
        CREATOR = new c();
        AQ = new PlaceFilter();
    }
    
    public PlaceFilter() {
        this(false, null);
    }
    
    PlaceFilter(final int as, final List list, final boolean an, final List list2, final List list3) {
        this.AS = as;
        List<Object> am;
        if (list != null) {
            am = Collections.unmodifiableList((List<?>)list);
        }
        else {
            am = Collections.emptyList();
        }
        this.AM = am;
        this.AN = an;
        List<Object> at;
        if (list3 != null) {
            at = Collections.unmodifiableList((List<?>)list3);
        }
        else {
            at = Collections.emptyList();
        }
        this.AT = at;
        List<Object> ap;
        if (list2 != null) {
            ap = Collections.unmodifiableList((List<?>)list2);
        }
        else {
            ap = Collections.emptyList();
        }
        this.AP = ap;
        this.AR = AbstractPlaceFilter.Fb(this.AM);
        this.AO = AbstractPlaceFilter.Fb(this.AT);
        this.AL = AbstractPlaceFilter.Fb(this.AP);
    }
    
    public PlaceFilter(final Collection collection, final boolean b, final Collection collection2, final Collection collection3) {
        this(0, AbstractPlaceFilter.Fc(collection), b, AbstractPlaceFilter.Fc(collection2), AbstractPlaceFilter.Fc(collection3));
    }
    
    public PlaceFilter(final boolean b, final Collection collection) {
        this(null, b, collection, null);
    }
    
    public Set EC() {
        return this.AL;
    }
    
    public Set ED() {
        return this.AR;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof PlaceFilter) {
            final PlaceFilter placeFilter = (PlaceFilter)o;
            if (this.AR.equals(placeFilter.AR) || this.AN != placeFilter.AN || !this.AO.equals(placeFilter.AO) || this.AL.equals(placeFilter.AL)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.AR, this.AN, this.AO, this.AL);
    }
    
    public String toString() {
        final n kx = u.kx(this);
        if (!this.AR.isEmpty()) {
            kx.kp("types", this.AR);
        }
        kx.kp("requireOpenNow", this.AN);
        if (!this.AL.isEmpty()) {
            kx.kp("placeIds", this.AL);
        }
        if (!this.AO.isEmpty()) {
            kx.kp("requestedUserDataTypes", this.AO);
        }
        return kx.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.EX(this, parcel, n);
    }
}
