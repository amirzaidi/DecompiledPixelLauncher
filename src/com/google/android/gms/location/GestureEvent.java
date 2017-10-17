// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class GestureEvent extends AbstractSafeParcelable
{
    public static final g CREATOR;
    private final boolean CA;
    private final int CB;
    private final long CC;
    private final long CD;
    private final int CE;
    private final int CF;
    private final boolean Cz;
    
    static {
        CREATOR = new g();
    }
    
    GestureEvent(final int cb, final int cf, final long cc, final long cd, final int ce, final boolean ca, final boolean cz) {
        this.CB = cb;
        this.CF = cf;
        this.CC = cc;
        this.CD = cd;
        this.CE = ce;
        this.CA = ca;
        this.Cz = cz;
    }
    
    public boolean GT() {
        return this.CA;
    }
    
    public int GU() {
        return this.CE;
    }
    
    public boolean GV() {
        return this.Cz;
    }
    
    public int GW() {
        return this.CF;
    }
    
    public int GX() {
        return this.CB;
    }
    
    public long GY() {
        return this.CD;
    }
    
    public long GZ() {
        return this.CC;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final g creator = GestureEvent.CREATOR;
        g.Hc(this, parcel, n);
    }
}
