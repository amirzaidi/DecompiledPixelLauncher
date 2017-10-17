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
    private final TimeFilterImpl IB;
    private final KeyFilterImpl IC;
    private final int ID;
    private final int IE;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    RelationFilterImpl$Inclusion(final int id, final int ie, final TimeFilterImpl ib, final KeyFilterImpl ic) {
        this.ID = id;
        this.IE = ie;
        this.IB = ib;
        this.IC = ic;
    }
    
    public TimeFilterImpl MJ() {
        return this.IB;
    }
    
    public KeyFilterImpl MK() {
        return this.IC;
    }
    
    public int ML() {
        return this.IE;
    }
    
    public int MM() {
        return this.ID;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof RelationFilterImpl$Inclusion) {
            final RelationFilterImpl$Inclusion relationFilterImpl$Inclusion = (RelationFilterImpl$Inclusion)o;
            if (this.ML() != relationFilterImpl$Inclusion.ML() || !this.MJ().equals(relationFilterImpl$Inclusion.MJ()) || u.kv(this.MK(), relationFilterImpl$Inclusion.MK())) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.IE, this.IB, this.IC);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.MR(this, parcel, n);
    }
}
