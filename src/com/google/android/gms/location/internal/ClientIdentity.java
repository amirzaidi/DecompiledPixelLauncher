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
    private final int AL;
    public final int AM;
    public final String packageName;
    
    static {
        CREATOR = new c();
    }
    
    ClientIdentity(final int al, final int am, final String packageName) {
        this.AL = al;
        this.AM = am;
        this.packageName = packageName;
    }
    
    int Fn() {
        return this.AL;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (o == this) {
            return b;
        }
        if (o != null && o instanceof ClientIdentity) {
            final ClientIdentity clientIdentity = (ClientIdentity)o;
            if (clientIdentity.AM != this.AM || u.hH(clientIdentity.packageName, this.packageName)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return this.AM;
    }
    
    public String toString() {
        return String.format("%d:%s", this.AM, this.packageName);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.Fa(this, parcel, n);
    }
}
