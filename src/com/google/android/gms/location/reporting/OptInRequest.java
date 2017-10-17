// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.reporting;

import android.os.Parcel;
import com.google.android.gms.internal.A;
import com.google.android.gms.common.internal.u;
import android.accounts.Account;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class OptInRequest implements SafeParcelable
{
    public static final g CREATOR;
    private final String BI;
    private final int BJ;
    private final Account BK;
    
    static {
        CREATOR = new g();
    }
    
    public OptInRequest(final int bj, final Account bk, final String bi) {
        this.BJ = bj;
        this.BK = bk;
        this.BI = bi;
    }
    
    public int Gv() {
        return this.BJ;
    }
    
    public int describeContents() {
        final g creator = OptInRequest.CREATOR;
        return 0;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof OptInRequest) {
            final OptInRequest optInRequest = (OptInRequest)o;
            if (!this.BK.equals((Object)optInRequest.BK) || !u.hH(this.BI, optInRequest.BI)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public Account getAccount() {
        return this.BK;
    }
    
    public String getTag() {
        return this.BI;
    }
    
    public int hashCode() {
        return u.hI(this.BK, this.BI);
    }
    
    public String toString() {
        final int bj = this.BJ;
        final String value = String.valueOf(A.sA(this.BK));
        final String bi = this.BI;
        return new StringBuilder(String.valueOf(value).length() + 58 + String.valueOf(bi).length()).append("UploadRequest{mVersionCode=").append(bj).append(", mAccount=").append(value).append(", mTag='").append(bi).append("}").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final g creator = OptInRequest.CREATOR;
        g.Gq(this, parcel, n);
    }
}
