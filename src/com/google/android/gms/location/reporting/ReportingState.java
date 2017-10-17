// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.reporting;

import android.os.Parcel;
import com.google.android.gms.internal.A;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ReportingState extends AbstractSafeParcelable
{
    public static final a CREATOR;
    private final Integer Bk;
    private final boolean Bl;
    private final int Bm;
    private final boolean Bn;
    private final boolean Bo;
    private final int Bp;
    private final int Bq;
    private final int Br;
    private final int Bs;
    
    static {
        CREATOR = new a();
    }
    
    public ReportingState(final int bs, final int br, final int bq, final boolean bn, final boolean bo, final int bp, final int bm, final Integer bk, final boolean bl) {
        this.Bs = bs;
        this.Br = br;
        this.Bq = bq;
        this.Bn = bn;
        this.Bo = bo;
        this.Bp = bp;
        this.Bm = bm;
        this.Bk = bk;
        this.Bl = bl;
    }
    
    Integer FY() {
        return this.Bk;
    }
    
    public boolean FZ() {
        return this.Bn;
    }
    
    public boolean Ga() {
        return this.Bo;
    }
    
    public int Gb() {
        return f.FX(this.Bq);
    }
    
    int Gc() {
        return c.FT(this.Bm);
    }
    
    public boolean Gd() {
        return this.Bl;
    }
    
    public int Ge() {
        return c.FT(this.Bp);
    }
    
    public int Gf() {
        return f.FX(this.Br);
    }
    
    int Gg() {
        return this.Bs;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o instanceof ReportingState) {
            final ReportingState reportingState = (ReportingState)o;
            if (this.Br == reportingState.Br && this.Bq == reportingState.Bq && this.Bn == reportingState.Bn && this.Bo == reportingState.Bo && this.Bp == reportingState.Bp && this.Bm == reportingState.Bm && u.hH(this.Bk, reportingState.Bk) && this.Bl == reportingState.Bl) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.Br, this.Bq, this.Bn, this.Bo, this.Bp, this.Bm, this.Bk, this.Bl);
    }
    
    public String toString() {
        String sz;
        if (this.Bk == null) {
            sz = "(hidden-from-unauthorized-caller)";
        }
        else {
            sz = A.sz(this.Bk);
        }
        return new StringBuilder(String.valueOf(sz).length() + 261).append("ReportingState{mReportingEnabled=").append(this.Br).append(", mHistoryEnabled=").append(this.Bq).append(", mAllowed=").append(this.Bn).append(", mActive=").append(this.Bo).append(", mExpectedOptInResult=").append(this.Bp).append(", mExpectedOptInResultAssumingLocationEnabled=").append(this.Bm).append(", mVersionCode=").append(this.Bs).append(", mDeviceTag=").append(sz).append(", mCanAccessSettings=").append(this.Bl).append("}").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final a creator = ReportingState.CREATOR;
        a.FR(this, parcel, n);
    }
}
