// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.api;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.app.PendingIntent;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class Status extends AbstractSafeParcelable implements b, ReflectedParcelable
{
    public static final Parcelable$Creator CREATOR;
    public static final Status dR;
    public static final Status dU;
    public static final Status dV;
    public static final Status dW;
    public static final Status dY;
    public static final Status ea;
    public static final Status eb;
    private final String dS;
    private final int dT;
    private final PendingIntent dX;
    private final int dZ;
    
    static {
        dU = new Status(0);
        dW = new Status(14);
        ea = new Status(8);
        dV = new Status(15);
        dR = new Status(16);
        eb = new Status(17);
        dY = new Status(18);
        CREATOR = (Parcelable$Creator)new z();
    }
    
    public Status(final int n) {
        this(n, null);
    }
    
    Status(final int dz, final int dt, final String ds, final PendingIntent dx) {
        this.dZ = dz;
        this.dT = dt;
        this.dS = ds;
        this.dX = dx;
    }
    
    public Status(final int n, final String s) {
        this(1, n, s, null);
    }
    
    public Status(final int n, final String s, final PendingIntent pendingIntent) {
        this(1, n, s, pendingIntent);
    }
    
    private String dH() {
        if (this.dS == null) {
            return A.eG(this.dT);
        }
        return this.dS;
    }
    
    public int dD() {
        return this.dT;
    }
    
    public String dE() {
        return this.dS;
    }
    
    public boolean dF() {
        boolean b = false;
        if (this.dT <= 0) {
            b = true;
        }
        return b;
    }
    
    int dG() {
        return this.dZ;
    }
    
    public Status dr() {
        return this;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o instanceof Status) {
            final Status status = (Status)o;
            if (this.dZ == status.dZ && this.dT == status.dT && u.hH(this.dS, status.dS) && u.hH(this.dX, status.dX)) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    PendingIntent getPendingIntent() {
        return this.dX;
    }
    
    public int hashCode() {
        return u.hI(this.dZ, this.dT, this.dS, this.dX);
    }
    
    public String toString() {
        return u.hJ(this).hB("statusCode", this.dH()).hB("resolution", this.dX).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        z.eF(this, parcel, n);
    }
}
