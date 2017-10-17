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
    private final String lA;
    private final long lB;
    private final String lC;
    private final String lD;
    private final String lE;
    private final List lF;
    private final String lr;
    private final long ls;
    private long lt;
    final int lu;
    private final int lv;
    private final float lw;
    private int lx;
    private final long ly;
    private int lz;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    WakeLockEvent(final int lu, final long ly, final int lz, final String le, final int lv, final List lf, final String lr, final long ls, final int lx, final String ld, final String lc, final float lw, final long lb, final String la) {
        this.lu = lu;
        this.ly = ly;
        this.lz = lz;
        this.lE = le;
        this.lD = ld;
        this.lA = la;
        this.lv = lv;
        this.lt = -1;
        this.lF = lf;
        this.lr = lr;
        this.ls = ls;
        this.lx = lx;
        this.lC = lc;
        this.lw = lw;
        this.lB = lb;
    }
    
    public String oA() {
        return this.lC;
    }
    
    public long oB() {
        return this.lt;
    }
    
    public String oC() {
        return this.lD;
    }
    
    public long oD() {
        return this.ls;
    }
    
    public int op() {
        return this.lx;
    }
    
    public int oq() {
        return this.lv;
    }
    
    public String or() {
        return this.lE;
    }
    
    public String os() {
        final String value = String.valueOf("\t");
        final String value2 = String.valueOf(this.or());
        final String value3 = String.valueOf("\t");
        final int oq = this.oq();
        final String value4 = String.valueOf("\t");
        String join;
        if (this.ov() != null) {
            join = TextUtils.join((CharSequence)",", (Iterable)this.ov());
        }
        else {
            join = "";
        }
        final String value5 = String.valueOf("\t");
        final int op = this.op();
        final String value6 = String.valueOf("\t");
        String oc;
        if (this.oC() != null) {
            oc = this.oC();
        }
        else {
            oc = "";
        }
        final String value7 = String.valueOf("\t");
        String oa;
        if (this.oA() != null) {
            oa = this.oA();
        }
        else {
            oa = "";
        }
        final String value8 = String.valueOf("\t");
        final float ou = this.ou();
        final String value9 = String.valueOf("\t");
        String oy;
        if (this.oy() != null) {
            oy = this.oy();
        }
        else {
            oy = "";
        }
        return new StringBuilder(String.valueOf(value).length() + 37 + String.valueOf(value2).length() + String.valueOf(value3).length() + String.valueOf(value4).length() + String.valueOf(join).length() + String.valueOf(value5).length() + String.valueOf(value6).length() + String.valueOf(oc).length() + String.valueOf(value7).length() + String.valueOf(oa).length() + String.valueOf(value8).length() + String.valueOf(value9).length() + String.valueOf(oy).length()).append(value).append(value2).append(value3).append(oq).append(value4).append(join).append(value5).append(op).append(value6).append(oc).append(value7).append(oa).append(value8).append(ou).append(value9).append(oy).toString();
    }
    
    public long ot() {
        return this.lB;
    }
    
    public float ou() {
        return this.lw;
    }
    
    public List ov() {
        return this.lF;
    }
    
    public long ow() {
        return this.ly;
    }
    
    public int ox() {
        return this.lz;
    }
    
    public String oy() {
        return this.lA;
    }
    
    public String oz() {
        return this.lr;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.oT(this, parcel, n);
    }
}
