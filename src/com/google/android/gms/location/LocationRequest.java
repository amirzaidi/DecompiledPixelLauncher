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
    private final int DA;
    float DB;
    int DC;
    boolean DD;
    long Dv;
    long Dw;
    int Dx;
    long Dy;
    long Dz;
    
    static {
        CREATOR = new n();
    }
    
    public LocationRequest() {
        this.DA = 1;
        this.DC = 102;
        this.Dy = 3600000L;
        this.Dw = 600000L;
        this.DD = false;
        this.Dz = Long.MAX_VALUE;
        this.Dx = -1 >>> 1;
        this.DB = 0.0f;
        this.Dv = 0L;
    }
    
    LocationRequest(final int da, final int dc, final long dy, final long dw, final boolean dd, final long dz, final int dx, final float db, final long dv) {
        this.DA = da;
        this.DC = dc;
        this.Dy = dy;
        this.Dw = dw;
        this.DD = dd;
        this.Dz = dz;
        this.Dx = dx;
        this.DB = db;
        this.Dv = dv;
    }
    
    public static String Hs(final int n) {
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
    
    int Ht() {
        return this.DA;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof LocationRequest) {
            final LocationRequest locationRequest = (LocationRequest)o;
            if (this.DC != locationRequest.DC || this.Dy != locationRequest.Dy || this.Dw != locationRequest.Dw || this.DD != locationRequest.DD || this.Dz != locationRequest.Dz || this.Dx != locationRequest.Dx || this.DB != locationRequest.DB) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.DC, this.Dy, this.Dw, this.DD, this.Dz, this.Dx, this.DB);
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("Request[").append(Hs(this.DC));
        if (this.DC != 105) {
            sb.append(" requested=");
            sb.append(this.Dy).append("ms");
        }
        sb.append(" fastest=");
        sb.append(this.Dw).append("ms");
        int n;
        if (this.Dv <= this.Dy) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n == 0) {
            sb.append(" maxWait=");
            sb.append(this.Dv).append("ms");
        }
        if (this.Dz != Long.MAX_VALUE) {
            final long n2 = this.Dz - SystemClock.elapsedRealtime();
            sb.append(" expireIn=");
            sb.append(n2).append("ms");
        }
        if (this.Dx != -1 >>> 1) {
            sb.append(" num=").append(this.Dx);
        }
        sb.append(']');
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        n.IF(this, parcel, n);
    }
}
