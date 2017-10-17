// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.reporting;

import android.os.Parcel;
import com.google.android.gms.internal.A;
import com.google.android.gms.common.internal.u;
import android.accounts.Account;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class UploadRequest extends AbstractSafeParcelable
{
    public static final b CREATOR;
    private final int BA;
    private final String BB;
    private final long BC;
    private final long Bw;
    private final Account Bx;
    private final String By;
    private final long Bz;
    
    static {
        CREATOR = new b();
    }
    
    public UploadRequest(final int ba, final Account bx, final String bb, final long bw, final long bc, final long bz, final String by) {
        this.BA = ba;
        this.Bx = bx;
        this.BB = bb;
        this.Bw = bw;
        this.BC = bc;
        this.Bz = bz;
        this.By = by;
    }
    
    public String Gk() {
        return this.BB;
    }
    
    public long Gl() {
        return this.BC;
    }
    
    public long Gm() {
        return this.Bz;
    }
    
    public String Gn() {
        return this.By;
    }
    
    public long Go() {
        return this.Bw;
    }
    
    public int Gp() {
        return this.BA;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof UploadRequest) {
            final UploadRequest uploadRequest = (UploadRequest)o;
            if (!this.Bx.equals((Object)uploadRequest.Bx) || !this.BB.equals(uploadRequest.BB) || !u.hH(this.Bw, uploadRequest.Bw) || this.BC != uploadRequest.BC || this.Bz != uploadRequest.Bz || u.hH(this.By, uploadRequest.By)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public Account getAccount() {
        return this.Bx;
    }
    
    public int hashCode() {
        return u.hI(this.Bx, this.BB, this.Bw, this.BC, this.Bz, this.By);
    }
    
    public String toString() {
        final int ba = this.BA;
        final String value = String.valueOf(A.sA(this.Bx));
        final String bb = this.BB;
        final long bw = this.Bw;
        final long bc = this.BC;
        final long bz = this.Bz;
        final String by = this.By;
        return new StringBuilder(String.valueOf(value).length() + 210 + String.valueOf(bb).length() + String.valueOf(by).length()).append("UploadRequest{mVersionCode=").append(ba).append(", mAccount=").append(value).append(", mReason='").append(bb).append("'").append(", mDurationMillis=").append(bw).append(", mMovingLatencyMillis=").append(bc).append(", mStationaryLatencyMillis=").append(bz).append(", mAppSpecificKey='").append(by).append("'").append("}").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final b creator = UploadRequest.CREATOR;
        b.FS(this, parcel, n);
    }
}
