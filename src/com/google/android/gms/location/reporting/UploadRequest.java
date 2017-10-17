// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.reporting;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.accounts.Account;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class UploadRequest extends AbstractSafeParcelable
{
    public static final b CREATOR;
    private final long Db;
    private final Account Dc;
    private final String Dd;
    private final long De;
    private final int Df;
    private final String Dg;
    private final long Dh;
    
    static {
        CREATOR = new b();
    }
    
    public UploadRequest(final int df, final Account dc, final String dg, final long db, final long dh, final long de, final String dd) {
        this.Df = df;
        this.Dc = dc;
        this.Dg = dg;
        this.Db = db;
        this.Dh = dh;
        this.De = de;
        this.Dd = dd;
    }
    
    public String Hd() {
        return this.Dg;
    }
    
    public long He() {
        return this.Dh;
    }
    
    public long Hf() {
        return this.De;
    }
    
    public String Hg() {
        return this.Dd;
    }
    
    public long Hh() {
        return this.Db;
    }
    
    public int Hi() {
        return this.Df;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof UploadRequest) {
            final UploadRequest uploadRequest = (UploadRequest)o;
            if (!this.Dc.equals((Object)uploadRequest.Dc) || !this.Dg.equals(uploadRequest.Dg) || !u.kv(this.Db, uploadRequest.Db) || this.Dh != uploadRequest.Dh || this.De != uploadRequest.De || u.kv(this.Dd, uploadRequest.Dd)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public Account getAccount() {
        return this.Dc;
    }
    
    public int hashCode() {
        return u.kw(this.Dc, this.Dg, this.Db, this.Dh, this.De, this.Dd);
    }
    
    public String toString() {
        final int df = this.Df;
        final String value = String.valueOf(com.google.android.gms.internal.u.sz(this.Dc));
        final String dg = this.Dg;
        final long db = this.Db;
        final long dh = this.Dh;
        final long de = this.De;
        final String dd = this.Dd;
        return new StringBuilder(String.valueOf(value).length() + 210 + String.valueOf(dg).length() + String.valueOf(dd).length()).append("UploadRequest{mVersionCode=").append(df).append(", mAccount=").append(value).append(", mReason='").append(dg).append("'").append(", mDurationMillis=").append(db).append(", mMovingLatencyMillis=").append(dh).append(", mStationaryLatencyMillis=").append(de).append(", mAppSpecificKey='").append(dd).append("'").append("}").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final b creator = UploadRequest.CREATOR;
        b.GL(this, parcel, n);
    }
}
