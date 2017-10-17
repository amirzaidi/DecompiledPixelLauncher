// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.reporting;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class UploadRequestResult extends AbstractSafeParcelable
{
    public static final e CREATOR;
    private final long Bt;
    private final int Bu;
    private final int Bv;
    
    static {
        CREATOR = new e();
    }
    
    UploadRequestResult(final int bv, final int bu, final long bt) {
        this.Bv = bv;
        this.Bu = bu;
        this.Bt = bt;
    }
    
    public int Gh() {
        return this.Bu;
    }
    
    public long Gi() {
        return this.Bt;
    }
    
    int Gj() {
        return this.Bv;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o instanceof UploadRequestResult) {
            final UploadRequestResult uploadRequestResult = (UploadRequestResult)o;
            if (this.Bt == uploadRequestResult.Bt && this.Bu == uploadRequestResult.Bu) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.Bu, this.Bt);
    }
    
    public String toString() {
        return new StringBuilder(90).append("Result{mVersionCode=").append(this.Bv).append(", mResultCode=").append(this.Bu).append(", mRequestId=").append(this.Bt).append("}").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final e creator = UploadRequestResult.CREATOR;
        e.FW(this, parcel, n);
    }
}
