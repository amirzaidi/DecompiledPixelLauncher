// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.text.TextUtils;
import java.util.List;
import android.os.Parcelable$Creator;

public final class WakeLockEvent extends StatsEvent
{
    public static final Parcelable$Creator CREATOR;
    private final long iA;
    private long iB;
    final int iC;
    private final int iD;
    private final float iE;
    private int iF;
    private final long iG;
    private int iH;
    private final String iI;
    private final long iJ;
    private final String iK;
    private final String iL;
    private final String iM;
    private final List iN;
    private final String iz;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    WakeLockEvent(final int ic, final long ig, final int ih, final String im, final int id, final List in, final String iz, final long ia, final int if1, final String il, final String ik, final float ie, final long ij, final String ii) {
        this.iC = ic;
        this.iG = ig;
        this.iH = ih;
        this.iM = im;
        this.iL = il;
        this.iI = ii;
        this.iD = id;
        this.iB = -1;
        this.iN = in;
        this.iz = iz;
        this.iA = ia;
        this.iF = if1;
        this.iK = ik;
        this.iE = ie;
        this.iJ = ij;
    }
    
    public int lB() {
        return this.iF;
    }
    
    public int lC() {
        return this.iD;
    }
    
    public String lD() {
        return this.iM;
    }
    
    public String lE() {
        final String value = String.valueOf("\t");
        final String value2 = String.valueOf(this.lD());
        final String value3 = String.valueOf("\t");
        final int lc = this.lC();
        final String value4 = String.valueOf("\t");
        String join;
        if (this.lH() != null) {
            join = TextUtils.join((CharSequence)",", (Iterable)this.lH());
        }
        else {
            join = "";
        }
        final String value5 = String.valueOf("\t");
        final int lb = this.lB();
        final String value6 = String.valueOf("\t");
        String lo;
        if (this.lO() != null) {
            lo = this.lO();
        }
        else {
            lo = "";
        }
        final String value7 = String.valueOf("\t");
        String lm;
        if (this.lM() != null) {
            lm = this.lM();
        }
        else {
            lm = "";
        }
        final String value8 = String.valueOf("\t");
        final float lg = this.lG();
        final String value9 = String.valueOf("\t");
        String lk;
        if (this.lK() != null) {
            lk = this.lK();
        }
        else {
            lk = "";
        }
        return new StringBuilder(String.valueOf(value).length() + 37 + String.valueOf(value2).length() + String.valueOf(value3).length() + String.valueOf(value4).length() + String.valueOf(join).length() + String.valueOf(value5).length() + String.valueOf(value6).length() + String.valueOf(lo).length() + String.valueOf(value7).length() + String.valueOf(lm).length() + String.valueOf(value8).length() + String.valueOf(value9).length() + String.valueOf(lk).length()).append(value).append(value2).append(value3).append(lc).append(value4).append(join).append(value5).append(lb).append(value6).append(lo).append(value7).append(lm).append(value8).append(lg).append(value9).append(lk).toString();
    }
    
    public long lF() {
        return this.iJ;
    }
    
    public float lG() {
        return this.iE;
    }
    
    public List lH() {
        return this.iN;
    }
    
    public long lI() {
        return this.iG;
    }
    
    public int lJ() {
        return this.iH;
    }
    
    public String lK() {
        return this.iI;
    }
    
    public String lL() {
        return this.iz;
    }
    
    public String lM() {
        return this.iK;
    }
    
    public long lN() {
        return this.iB;
    }
    
    public String lO() {
        return this.iL;
    }
    
    public long lP() {
        return this.iA;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.mf(this, parcel, n);
    }
}
