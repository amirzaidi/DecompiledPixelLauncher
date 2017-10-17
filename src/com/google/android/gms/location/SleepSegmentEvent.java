// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.l;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class SleepSegmentEvent extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final long Ep;
    private final int Eq;
    private final long Er;
    private final int Es;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    public SleepSegmentEvent(final int eq, final long er, final long ep, final int es) {
        final long n = 0L;
        boolean b = true;
        l.ke((n < er || !b) && b, "startTimeMillis must be greater than 0.");
        l.ke((n < ep || !b) && b, "endTimeMillis must be greater than 0.");
        if (er > ep && b) {
            b = false;
        }
        l.ke(b, "endTimeMillis must be greater than or equal to startTimeMillis");
        this.Eq = eq;
        this.Er = er;
        this.Ep = ep;
        this.Es = es;
    }
    
    public int HZ() {
        return this.Es;
    }
    
    public long Ia() {
        return this.Ep;
    }
    
    public int Ib() {
        return this.Eq;
    }
    
    public long Ic() {
        return this.Er;
    }
    
    public String toString() {
        return String.format("startTimeMillis=%d, endTimeMillis=%d, mStatus=%d]", this.Er, this.Ep, this.Es);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.Ii(this, parcel, n);
    }
}
