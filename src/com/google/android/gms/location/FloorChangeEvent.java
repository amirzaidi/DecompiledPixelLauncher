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
    private final long Dq;
    private final int Dr;
    private final float Ds;
    private final int Dt;
    private final long Du;
    private final long Dv;
    private final long Dw;
    private final int Dx;
    
    static {
        CREATOR = new u();
    }
    
    public FloorChangeEvent(final int dt, final int dx, final int dr, final long du, final long dq, final long dv, final long dw, final float ds) {
        l.hq(dr >= 0, "confidence must be equal to or greater than 0");
        l.hq(dr <= 100, "confidence must be equal to or less than 100");
        boolean b;
        if (0L >= du) {
            b = true;
        }
        else {
            b = false;
        }
        l.hq(!b, "startTimeMillis must be greater than 0");
        boolean b2;
        if (du > dq) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        l.hq(!b2, "endTimeMillis must be equal to or greater than startTimeMillis");
        boolean b3;
        if (0L > dv) {
            b3 = true;
        }
        else {
            b3 = false;
        }
        l.hq(!b3, "startElapsedRealtimeMillis must be equal to or greater than 0");
        boolean b4;
        if (dv > dw) {
            b4 = true;
        }
        else {
            b4 = false;
        }
        l.hq(!b4, "endElapsedRealtimeMillis must be equal to or greater than startElapsedRealtimeMillis");
        boolean b5;
        if (dv >= du) {
            b5 = true;
        }
        else {
            b5 = false;
        }
        l.hq(!b5, "startTimeMillis must be greater than startElapsedRealtimeMillis");
        boolean b6;
        if (dw >= dq) {
            b6 = true;
        }
        else {
            b6 = false;
        }
        l.hq(!b6, "endTimeMillis must be greater than endElapsedRealtimeMillis");
        this.Dt = dt;
        this.Dx = dx;
        this.Dr = dr;
        this.Du = du;
        this.Dq = dq;
        this.Dv = dv;
        this.Dw = dw;
        this.Ds = ds;
    }
    
    public float Il() {
        return this.Ds;
    }
    
    public int Im() {
        return this.Dr;
    }
    
    public long In() {
        return this.Dv;
    }
    
    public int Io() {
        return this.Dx;
    }
    
    public long Ip() {
        return this.Dq;
    }
    
    public long Iq() {
        return this.Du;
    }
    
    public int Ir() {
        return this.Dt;
    }
    
    public long Is() {
        return this.Dw;
    }
    
    public String toString() {
        return String.format("FloorChangeEvent [type=%d, confidence=%d, elevationChange=%f, startTimeMillis=%d, endTimeMillis=%d, startElapsedRealtimeMillis=%d, endElapsedRealtimeMillis=%d]", this.Dx, this.Dr, this.Ds, this.Du, this.Dq, this.Dv, this.Dw);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        u.Ij(this, parcel, n);
    }
}
