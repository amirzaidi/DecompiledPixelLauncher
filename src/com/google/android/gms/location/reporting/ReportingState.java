// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.reporting;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ReportingState extends AbstractSafeParcelable
{
    public static final a CREATOR;
    private final Integer CP;
    private final boolean CQ;
    private final int CR;
    private final boolean CS;
    private final boolean CT;
    private final int CU;
    private final int CV;
    private final int CW;
    private final int CX;
    
    static {
        CREATOR = new a();
    }
    
    public ReportingState(final int cx, final int cw, final int cv, final boolean cs, final boolean ct, final int cu, final int cr, final Integer cp, final boolean cq) {
        this.CX = cx;
        this.CW = cw;
        this.CV = cv;
        this.CS = cs;
        this.CT = ct;
        this.CU = cu;
        this.CR = cr;
        this.CP = cp;
        this.CQ = cq;
    }
    
    Integer GR() {
        return this.CP;
    }
    
    public boolean GS() {
        return this.CS;
    }
    
    public boolean GT() {
        return this.CT;
    }
    
    public int GU() {
        return f.GQ(this.CV);
    }
    
    int GV() {
        return c.GM(this.CR);
    }
    
    public boolean GW() {
        return this.CQ;
    }
    
    public int GX() {
        return c.GM(this.CU);
    }
    
    public int GY() {
        return f.GQ(this.CW);
    }
    
    int GZ() {
        return this.CX;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o instanceof ReportingState) {
            final ReportingState reportingState = (ReportingState)o;
            if (this.CW == reportingState.CW && this.CV == reportingState.CV && this.CS == reportingState.CS && this.CT == reportingState.CT && this.CU == reportingState.CU && this.CR == reportingState.CR && u.kv(this.CP, reportingState.CP) && this.CQ == reportingState.CQ) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.CW, this.CV, this.CS, this.CT, this.CU, this.CR, this.CP, this.CQ);
    }
    
    public String toString() {
        String sy;
        if (this.CP == null) {
            sy = "(hidden-from-unauthorized-caller)";
        }
        else {
            sy = com.google.android.gms.internal.u.sy(this.CP);
        }
        return new StringBuilder(String.valueOf(sy).length() + 261).append("ReportingState{mReportingEnabled=").append(this.CW).append(", mHistoryEnabled=").append(this.CV).append(", mAllowed=").append(this.CS).append(", mActive=").append(this.CT).append(", mExpectedOptInResult=").append(this.CU).append(", mExpectedOptInResultAssumingLocationEnabled=").append(this.CR).append(", mVersionCode=").append(this.CX).append(", mDeviceTag=").append(sy).append(", mCanAccessSettings=").append(this.CQ).append("}").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final a creator = ReportingState.CREATOR;
        a.GK(this, parcel, n);
    }
}
