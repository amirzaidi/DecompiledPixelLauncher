// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable$Creator;

public final class ConnectionEvent extends StatsEvent
{
    public static final Parcelable$Creator CREATOR;
    private final String iX;
    private final long iY;
    private final long iZ;
    private long ja;
    private final String jb;
    private final String jc;
    private final long jd;
    private int je;
    private final String jf;
    private final String jg;
    final int jh;
    private final String ji;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    ConnectionEvent(final int jh, final long jd, final int je, final String ji, final String jf, final String jg, final String jb, final String ix, final String jc, final long iy, final long iz) {
        this.jh = jh;
        this.jd = jd;
        this.je = je;
        this.ji = ji;
        this.jf = jf;
        this.jg = jg;
        this.jb = jb;
        this.ja = -1;
        this.iX = ix;
        this.jc = jc;
        this.iY = iy;
        this.iZ = iz;
    }
    
    public ConnectionEvent(final long n, final int n2, final String s, final String s2, final String s3, final String s4, final String s5, final String s6, final long n3, final long n4) {
        this(1, n, n2, s, s2, s3, s4, s5, s6, n3, n4);
    }
    
    public String lE() {
        final String value = String.valueOf("\t");
        final String value2 = String.valueOf(this.mi());
        final String value3 = String.valueOf(this.mm());
        final String value4 = String.valueOf("\t");
        final String value5 = String.valueOf(this.mo());
        final String value6 = String.valueOf(this.mj());
        final String value7 = String.valueOf("\t");
        String ix;
        if (this.iX != null) {
            ix = this.iX;
        }
        else {
            ix = "";
        }
        final String value8 = String.valueOf("\t");
        return new StringBuilder(String.valueOf(value).length() + 22 + String.valueOf(value2).length() + String.valueOf(value3).length() + String.valueOf(value4).length() + String.valueOf(value5).length() + String.valueOf(value6).length() + String.valueOf(value7).length() + String.valueOf(ix).length() + String.valueOf(value8).length()).append(value).append(value2).append("/").append(value3).append(value4).append(value5).append("/").append(value6).append(value7).append(ix).append(value8).append(this.ml()).toString();
    }
    
    public long lI() {
        return this.jd;
    }
    
    public int lJ() {
        return this.je;
    }
    
    public long lN() {
        return this.ja;
    }
    
    public String mi() {
        return this.ji;
    }
    
    public String mj() {
        return this.jb;
    }
    
    public String mk() {
        return this.iX;
    }
    
    public long ml() {
        return this.iZ;
    }
    
    public String mm() {
        return this.jf;
    }
    
    public String mn() {
        return this.jc;
    }
    
    public String mo() {
        return this.jg;
    }
    
    public long mp() {
        return this.iY;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.ms(this, parcel, n);
    }
}
