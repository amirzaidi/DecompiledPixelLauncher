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
    private final long CY;
    private final int CZ;
    private final int Da;
    
    static {
        CREATOR = new e();
    }
    
    UploadRequestResult(final int da, final int cz, final long cy) {
        this.Da = da;
        this.CZ = cz;
        this.CY = cy;
    }
    
    public int Ha() {
        return this.CZ;
    }
    
    public long Hb() {
        return this.CY;
    }
    
    int Hc() {
        return this.Da;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o instanceof UploadRequestResult) {
            final UploadRequestResult uploadRequestResult = (UploadRequestResult)o;
            if (this.CY == uploadRequestResult.CY && this.CZ == uploadRequestResult.CZ) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.CZ, this.CY);
    }
    
    public String toString() {
        return new StringBuilder(90).append("Result{mVersionCode=").append(this.Da).append(", mResultCode=").append(this.CZ).append(", mRequestId=").append(this.CY).append("}").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final e creator = UploadRequestResult.CREATOR;
        e.GP(this, parcel, n);
    }
}
