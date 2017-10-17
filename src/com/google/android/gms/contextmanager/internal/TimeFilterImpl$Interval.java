// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class TimeFilterImpl$Interval extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final long Jj;
    private final int Jk;
    private final long Jl;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    TimeFilterImpl$Interval(final int jk, final long jl, final long jj) {
        this.Jk = jk;
        this.Jl = jl;
        this.Jj = jj;
    }
    
    public long Oa() {
        return this.Jj;
    }
    
    int Ob() {
        return this.Jk;
    }
    
    public long Oc() {
        return this.Jl;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof TimeFilterImpl$Interval) {
            final TimeFilterImpl$Interval timeFilterImpl$Interval = (TimeFilterImpl$Interval)o;
            if (this.Jl != timeFilterImpl$Interval.Oc() || this.Jj != timeFilterImpl$Interval.Oa()) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.Jl, this.Jj);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.NP(this, parcel, n);
    }
}
