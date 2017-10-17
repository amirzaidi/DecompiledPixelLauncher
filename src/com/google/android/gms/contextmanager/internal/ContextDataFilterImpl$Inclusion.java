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
    private final TimeFilterImpl HH;
    private final int HI;
    private final KeyFilterImpl HJ;
    private final int HK;
    private final int HL;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    ContextDataFilterImpl$Inclusion(final int hk, final int hi, final int hl, final TimeFilterImpl hh, final KeyFilterImpl hj) {
        this.HK = hk;
        this.HI = hi;
        this.HL = hl;
        this.HH = hh;
        this.HJ = hj;
    }
    
    public TimeFilterImpl Nk() {
        return this.HH;
    }
    
    public KeyFilterImpl Nl() {
        return this.HJ;
    }
    
    public int Nm() {
        return this.HL;
    }
    
    int Nn() {
        return this.HK;
    }
    
    public int No() {
        return this.HI;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof ContextDataFilterImpl$Inclusion) {
            final ContextDataFilterImpl$Inclusion contextDataFilterImpl$Inclusion = (ContextDataFilterImpl$Inclusion)o;
            if (this.HI != contextDataFilterImpl$Inclusion.No() || this.HL != contextDataFilterImpl$Inclusion.Nm() || !this.HH.equals(contextDataFilterImpl$Inclusion.Nk()) || u.hH(this.HJ, contextDataFilterImpl$Inclusion.Nl())) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.HI, this.HL, this.HH, this.HJ);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.Mo(this, parcel, n);
    }
}
