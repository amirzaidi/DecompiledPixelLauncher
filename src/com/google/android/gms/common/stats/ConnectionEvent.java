// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable$Creator;

public final class ConnectionEvent extends StatsEvent
{
    public static final Parcelable$Creator CREATOR;
    private final String lP;
    private final long lQ;
    private final long lR;
    private long lS;
    private final String lT;
    private final String lU;
    private final long lV;
    private int lW;
    private final String lX;
    private final String lY;
    final int lZ;
    private final String ma;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    ConnectionEvent(final int lz, final long lv, final int lw, final String ma, final String lx, final String ly, final String lt, final String lp, final String lu, final long lq, final long lr) {
        this.lZ = lz;
        this.lV = lv;
        this.lW = lw;
        this.ma = ma;
        this.lX = lx;
        this.lY = ly;
        this.lT = lt;
        this.lS = -1;
        this.lP = lp;
        this.lU = lu;
        this.lQ = lq;
        this.lR = lr;
    }
    
    public ConnectionEvent(final long n, final int n2, final String s, final String s2, final String s3, final String s4, final String s5, final String s6, final long n3, final long n4) {
        this(1, n, n2, s, s2, s3, s4, s5, s6, n3, n4);
    }
    
    public long oB() {
        return this.lS;
    }
    
    public String oW() {
        return this.ma;
    }
    
    public String oX() {
        return this.lT;
    }
    
    public String oY() {
        return this.lP;
    }
    
    public long oZ() {
        return this.lR;
    }
    
    public String os() {
        final String value = String.valueOf("\t");
        final String value2 = String.valueOf(this.oW());
        final String value3 = String.valueOf(this.pa());
        final String value4 = String.valueOf("\t");
        final String value5 = String.valueOf(this.pc());
        final String value6 = String.valueOf(this.oX());
        final String value7 = String.valueOf("\t");
        String lp;
        if (this.lP != null) {
            lp = this.lP;
        }
        else {
            lp = "";
        }
        final String value8 = String.valueOf("\t");
        return new StringBuilder(String.valueOf(value).length() + 22 + String.valueOf(value2).length() + String.valueOf(value3).length() + String.valueOf(value4).length() + String.valueOf(value5).length() + String.valueOf(value6).length() + String.valueOf(value7).length() + String.valueOf(lp).length() + String.valueOf(value8).length()).append(value).append(value2).append("/").append(value3).append(value4).append(value5).append("/").append(value6).append(value7).append(lp).append(value8).append(this.oZ()).toString();
    }
    
    public long ow() {
        return this.lV;
    }
    
    public int ox() {
        return this.lW;
    }
    
    public String pa() {
        return this.lX;
    }
    
    public String pb() {
        return this.lU;
    }
    
    public String pc() {
        return this.lY;
    }
    
    public long pd() {
        return this.lQ;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.pg(this, parcel, n);
    }
}
