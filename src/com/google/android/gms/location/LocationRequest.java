// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class LocationRequest extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final n CREATOR;
    long BQ;
    long BR;
    int BS;
    long BT;
    long BU;
    private final int BV;
    float BW;
    int BX;
    boolean BY;
    
    static {
        CREATOR = new n();
    }
    
    public LocationRequest() {
        this.BV = 1;
        this.BX = 102;
        this.BT = 3600000L;
        this.BR = 600000L;
        this.BY = false;
        this.BU = Long.MAX_VALUE;
        this.BS = -1 >>> 1;
        this.BW = 0.0f;
        this.BQ = 0L;
    }
    
    LocationRequest(final int bv, final int bx, final long bt, final long br, final boolean by, final long bu, final int bs, final float bw, final long bq) {
        this.BV = bv;
        this.BX = bx;
        this.BT = bt;
        this.BR = br;
        this.BY = by;
        this.BU = bu;
        this.BS = bs;
        this.BW = bw;
        this.BQ = bq;
    }
    
    public static String Gz(final int n) {
        switch (n) {
            default: {
                return "???";
            }
            case 100: {
                return "PRIORITY_HIGH_ACCURACY";
            }
            case 102: {
                return "PRIORITY_BALANCED_POWER_ACCURACY";
            }
            case 104: {
                return "PRIORITY_LOW_POWER";
            }
            case 105: {
                return "PRIORITY_NO_POWER";
            }
        }
    }
    
    int GA() {
        return this.BV;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof LocationRequest) {
            final LocationRequest locationRequest = (LocationRequest)o;
            if (this.BX != locationRequest.BX || this.BT != locationRequest.BT || this.BR != locationRequest.BR || this.BY != locationRequest.BY || this.BU != locationRequest.BU || this.BS != locationRequest.BS || this.BW != locationRequest.BW) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.BX, this.BT, this.BR, this.BY, this.BU, this.BS, this.BW);
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("Request[").append(Gz(this.BX));
        if (this.BX != 105) {
            sb.append(" requested=");
            sb.append(this.BT).append("ms");
        }
        sb.append(" fastest=");
        sb.append(this.BR).append("ms");
        int n;
        if (this.BQ <= this.BT) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n == 0) {
            sb.append(" maxWait=");
            sb.append(this.BQ).append("ms");
        }
        if (this.BU != Long.MAX_VALUE) {
            final long n2 = this.BU - SystemClock.elapsedRealtime();
            sb.append(" expireIn=");
            sb.append(n2).append("ms");
        }
        if (this.BS != -1 >>> 1) {
            sb.append(" num=").append(this.BS);
        }
        sb.append(']');
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        n.HM(this, parcel, n);
    }
}
