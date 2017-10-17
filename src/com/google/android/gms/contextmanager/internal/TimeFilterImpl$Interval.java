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
    private final long HE;
    private final int HF;
    private final long HG;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    TimeFilterImpl$Interval(final int hf, final long hg, final long he) {
        this.HF = hf;
        this.HG = hg;
        this.HE = he;
    }
    
    public long Nh() {
        return this.HE;
    }
    
    int Ni() {
        return this.HF;
    }
    
    public long Nj() {
        return this.HG;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof TimeFilterImpl$Interval) {
            final TimeFilterImpl$Interval timeFilterImpl$Interval = (TimeFilterImpl$Interval)o;
            if (this.HG != timeFilterImpl$Interval.Nj() || this.HE != timeFilterImpl$Interval.Nh()) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.HG, this.HE);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.MW(this, parcel, n);
    }
}
