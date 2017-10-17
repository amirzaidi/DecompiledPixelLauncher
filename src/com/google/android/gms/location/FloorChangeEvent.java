// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class FloorChangeEvent extends AbstractSafeParcelable
{
    public static final u CREATOR;
    private final long EV;
    private final int EW;
    private final float EX;
    private final int EY;
    private final long EZ;
    private final long Fa;
    private final long Fb;
    private final int Fc;
    
    static {
        CREATOR = new u();
    }
    
    public FloorChangeEvent(final int ey, final int fc, final int ew, final long ez, final long ev, final long fa, final long fb, final float ex) {
        l.ke(ew >= 0, "confidence must be equal to or greater than 0");
        l.ke(ew <= 100, "confidence must be equal to or less than 100");
        boolean b;
        if (0L >= ez) {
            b = true;
        }
        else {
            b = false;
        }
        l.ke(!b, "startTimeMillis must be greater than 0");
        boolean b2;
        if (ez > ev) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        l.ke(!b2, "endTimeMillis must be equal to or greater than startTimeMillis");
        boolean b3;
        if (0L > fa) {
            b3 = true;
        }
        else {
            b3 = false;
        }
        l.ke(!b3, "startElapsedRealtimeMillis must be equal to or greater than 0");
        boolean b4;
        if (fa > fb) {
            b4 = true;
        }
        else {
            b4 = false;
        }
        l.ke(!b4, "endElapsedRealtimeMillis must be equal to or greater than startElapsedRealtimeMillis");
        boolean b5;
        if (fa >= ez) {
            b5 = true;
        }
        else {
            b5 = false;
        }
        l.ke(!b5, "startTimeMillis must be greater than startElapsedRealtimeMillis");
        boolean b6;
        if (fb >= ev) {
            b6 = true;
        }
        else {
            b6 = false;
        }
        l.ke(!b6, "endTimeMillis must be greater than endElapsedRealtimeMillis");
        this.EY = ey;
        this.Fc = fc;
        this.EW = ew;
        this.EZ = ez;
        this.EV = ev;
        this.Fa = fa;
        this.Fb = fb;
        this.EX = ex;
    }
    
    public float Je() {
        return this.EX;
    }
    
    public int Jf() {
        return this.EW;
    }
    
    public long Jg() {
        return this.Fa;
    }
    
    public int Jh() {
        return this.Fc;
    }
    
    public long Ji() {
        return this.EV;
    }
    
    public long Jj() {
        return this.EZ;
    }
    
    public int Jk() {
        return this.EY;
    }
    
    public long Jl() {
        return this.Fb;
    }
    
    public String toString() {
        return String.format("FloorChangeEvent [type=%d, confidence=%d, elevationChange=%f, startTimeMillis=%d, endTimeMillis=%d, startElapsedRealtimeMillis=%d, endElapsedRealtimeMillis=%d]", this.Fc, this.EW, this.EX, this.EZ, this.EV, this.Fa, this.Fb);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        u.Jc(this, parcel, n);
    }
}
