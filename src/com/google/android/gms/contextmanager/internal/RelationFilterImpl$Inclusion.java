// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class RelationFilterImpl$Inclusion extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final TimeFilterImpl GW;
    private final KeyFilterImpl GX;
    private final int GY;
    private final int GZ;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    RelationFilterImpl$Inclusion(final int gy, final int gz, final TimeFilterImpl gw, final KeyFilterImpl gx) {
        this.GY = gy;
        this.GZ = gz;
        this.GW = gw;
        this.GX = gx;
    }
    
    public TimeFilterImpl LQ() {
        return this.GW;
    }
    
    public KeyFilterImpl LR() {
        return this.GX;
    }
    
    public int LS() {
        return this.GZ;
    }
    
    public int LT() {
        return this.GY;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof RelationFilterImpl$Inclusion) {
            final RelationFilterImpl$Inclusion relationFilterImpl$Inclusion = (RelationFilterImpl$Inclusion)o;
            if (this.LS() != relationFilterImpl$Inclusion.LS() || !this.LQ().equals(relationFilterImpl$Inclusion.LQ()) || u.hH(this.LR(), relationFilterImpl$Inclusion.LR())) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.GZ, this.GW, this.GX);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.LY(this, parcel, n);
    }
}
