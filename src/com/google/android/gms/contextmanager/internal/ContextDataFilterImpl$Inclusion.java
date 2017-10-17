// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ContextDataFilterImpl$Inclusion extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final TimeFilterImpl Jm;
    private final int Jn;
    private final KeyFilterImpl Jo;
    private final int Jp;
    private final int Jq;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    ContextDataFilterImpl$Inclusion(final int jp, final int jn, final int jq, final TimeFilterImpl jm, final KeyFilterImpl jo) {
        this.Jp = jp;
        this.Jn = jn;
        this.Jq = jq;
        this.Jm = jm;
        this.Jo = jo;
    }
    
    public TimeFilterImpl Od() {
        return this.Jm;
    }
    
    public KeyFilterImpl Oe() {
        return this.Jo;
    }
    
    public int Of() {
        return this.Jq;
    }
    
    int Og() {
        return this.Jp;
    }
    
    public int Oh() {
        return this.Jn;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof ContextDataFilterImpl$Inclusion) {
            final ContextDataFilterImpl$Inclusion contextDataFilterImpl$Inclusion = (ContextDataFilterImpl$Inclusion)o;
            if (this.Jn != contextDataFilterImpl$Inclusion.Oh() || this.Jq != contextDataFilterImpl$Inclusion.Of() || !this.Jm.equals(contextDataFilterImpl$Inclusion.Od()) || u.kv(this.Jo, contextDataFilterImpl$Inclusion.Oe())) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.Jn, this.Jq, this.Jm, this.Jo);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.Nh(this, parcel, n);
    }
}
