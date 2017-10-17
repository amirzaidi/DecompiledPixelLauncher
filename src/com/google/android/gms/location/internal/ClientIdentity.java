// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ClientIdentity extends AbstractSafeParcelable
{
    public static final c CREATOR;
    private final int Cq;
    public final int Cr;
    public final String packageName;
    
    static {
        CREATOR = new c();
    }
    
    ClientIdentity(final int cq, final int cr, final String packageName) {
        this.Cq = cq;
        this.Cr = cr;
        this.packageName = packageName;
    }
    
    int Gg() {
        return this.Cq;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (o == this) {
            return b;
        }
        if (o != null && o instanceof ClientIdentity) {
            final ClientIdentity clientIdentity = (ClientIdentity)o;
            if (clientIdentity.Cr != this.Cr || u.kv(clientIdentity.packageName, this.packageName)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return this.Cr;
    }
    
    public String toString() {
        return String.format("%d:%s", this.Cr, this.packageName);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.FT(this, parcel, n);
    }
}
