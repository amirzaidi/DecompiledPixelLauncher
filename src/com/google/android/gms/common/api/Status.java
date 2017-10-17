// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.api;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.app.PendingIntent;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class Status extends AbstractSafeParcelable implements m, ReflectedParcelable
{
    public static final Parcelable$Creator CREATOR;
    public static final Status hk;
    public static final Status hn;
    public static final Status ho;
    public static final Status hp;
    public static final Status hr;
    public static final Status ht;
    public static final Status hu;
    private final String hl;
    private final int hm;
    private final PendingIntent hq;
    private final int hs;
    
    static {
        hn = new Status(0);
        hp = new Status(14);
        ht = new Status(8);
        ho = new Status(15);
        hk = new Status(16);
        hu = new Status(17);
        hr = new Status(18);
        CREATOR = (Parcelable$Creator)new z();
    }
    
    public Status(final int n) {
        this(n, null);
    }
    
    Status(final int hs, final int hm, final String hl, final PendingIntent hq) {
        this.hs = hs;
        this.hm = hm;
        this.hl = hl;
        this.hq = hq;
    }
    
    public Status(final int n, final String s) {
        this(1, n, s, null);
    }
    
    public Status(final int n, final String s, final PendingIntent pendingIntent) {
        this(1, n, s, pendingIntent);
    }
    
    private String ha() {
        if (this.hl == null) {
            return A.hu(this.hm);
        }
        return this.hl;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o instanceof Status) {
            final Status status = (Status)o;
            if (this.hs == status.hs && this.hm == status.hm && u.kv(this.hl, status.hl) && u.kv(this.hq, status.hq)) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public Status gV() {
        return this;
    }
    
    public int gW() {
        return this.hm;
    }
    
    public String gX() {
        return this.hl;
    }
    
    public boolean gY() {
        boolean b = false;
        if (this.hm <= 0) {
            b = true;
        }
        return b;
    }
    
    int gZ() {
        return this.hs;
    }
    
    PendingIntent getPendingIntent() {
        return this.hq;
    }
    
    public int hashCode() {
        return u.kw(this.hs, this.hm, this.hl, this.hq);
    }
    
    public String toString() {
        return u.kx(this).kp("statusCode", this.ha()).kp("resolution", this.hq).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        z.ht(this, parcel, n);
    }
}
