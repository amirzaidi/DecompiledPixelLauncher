// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.Collections;
import com.google.android.gms.location.LocationRequest;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class LocationRequestInternal extends AbstractSafeParcelable
{
    static final List AV;
    public static final s CREATOR;
    boolean AP;
    LocationRequest AQ;
    String AR;
    boolean AS;
    private final int AT;
    boolean AU;
    List AW;
    
    static {
        AV = Collections.emptyList();
        CREATOR = new s();
    }
    
    LocationRequestInternal(final int at, final LocationRequest aq, final boolean ap, final List aw, final String ar, final boolean as, final boolean au) {
        this.AT = at;
        this.AQ = aq;
        this.AP = ap;
        this.AW = aw;
        this.AR = ar;
        this.AS = as;
        this.AU = au;
    }
    
    int Fo() {
        return this.AT;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o instanceof LocationRequestInternal) {
            final LocationRequestInternal locationRequestInternal = (LocationRequestInternal)o;
            if (u.hH(this.AQ, locationRequestInternal.AQ) && this.AP == locationRequestInternal.AP && this.AS == locationRequestInternal.AS && u.hH(this.AW, locationRequestInternal.AW) && this.AU == locationRequestInternal.AU) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return this.AQ.hashCode();
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append(this.AQ.toString());
        if (this.AR != null) {
            sb.append(" tag=").append(this.AR);
        }
        sb.append(" trigger=").append(this.AP);
        sb.append(" hideAppOps=").append(this.AS);
        sb.append(" clients=").append(this.AW);
        sb.append(" forceCoarseLocation=").append(this.AU);
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        s.FO(this, parcel, n);
    }
}
