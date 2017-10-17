// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.reporting;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.accounts.Account;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class OptInRequest implements SafeParcelable
{
    public static final g CREATOR;
    private final String Dn;
    private final int Do;
    private final Account Dp;
    
    static {
        CREATOR = new g();
    }
    
    public OptInRequest(final int do1, final Account dp, final String dn) {
        this.Do = do1;
        this.Dp = dp;
        this.Dn = dn;
    }
    
    public int Ho() {
        return this.Do;
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
            if (!this.Dp.equals((Object)optInRequest.Dp) || !u.kv(this.Dn, optInRequest.Dn)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public Account getAccount() {
        return this.Dp;
    }
    
    public String getTag() {
        return this.Dn;
    }
    
    public int hashCode() {
        return u.kw(this.Dp, this.Dn);
    }
    
    public String toString() {
        final int do1 = this.Do;
        final String value = String.valueOf(com.google.android.gms.internal.u.sz(this.Dp));
        final String dn = this.Dn;
        return new StringBuilder(String.valueOf(value).length() + 58 + String.valueOf(dn).length()).append("UploadRequest{mVersionCode=").append(do1).append(", mAccount=").append(value).append(", mTag='").append(dn).append("}").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final g creator = OptInRequest.CREATOR;
        g.Hj(this, parcel, n);
    }
}
