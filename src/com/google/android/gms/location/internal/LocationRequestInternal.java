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
    public static final s CREATOR;
    static final List Cz;
    List CA;
    boolean Ct;
    LocationRequest Cu;
    String Cv;
    boolean Cw;
    private final int Cx;
    boolean Cy;
    
    static {
        Cz = Collections.emptyList();
        CREATOR = new s();
    }
    
    LocationRequestInternal(final int cx, final LocationRequest cu, final boolean ct, final List ca, final String cv, final boolean cw, final boolean cy) {
        this.Cx = cx;
        this.Cu = cu;
        this.Ct = ct;
        this.CA = ca;
        this.Cv = cv;
        this.Cw = cw;
        this.Cy = cy;
    }
    
    int Gh() {
        return this.Cx;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o instanceof LocationRequestInternal) {
            final LocationRequestInternal locationRequestInternal = (LocationRequestInternal)o;
            if (u.kv(this.Cu, locationRequestInternal.Cu) && this.Ct == locationRequestInternal.Ct && this.Cw == locationRequestInternal.Cw && u.kv(this.CA, locationRequestInternal.CA) && this.Cy == locationRequestInternal.Cy) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return this.Cu.hashCode();
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append(this.Cu.toString());
        if (this.Cv != null) {
            sb.append(" tag=").append(this.Cv);
        }
        sb.append(" trigger=").append(this.Ct);
        sb.append(" hideAppOps=").append(this.Cw);
        sb.append(" clients=").append(this.CA);
        sb.append(" forceCoarseLocation=").append(this.Cy);
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        s.GH(this, parcel, n);
    }
}
