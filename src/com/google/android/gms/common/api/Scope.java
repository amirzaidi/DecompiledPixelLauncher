// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.api;

import android.os.Parcel;
import com.google.android.gms.common.internal.l;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final String hi;
    final int hj;
    
    static {
        CREATOR = (Parcelable$Creator)new x();
    }
    
    Scope(final int hj, final String hi) {
        l.kd(hi, "scopeUri must not be null or empty");
        this.hj = hj;
        this.hi = hi;
    }
    
    public Scope(final String s) {
        this(1, s);
    }
    
    public boolean equals(final Object o) {
        return this == o || (o instanceof Scope && this.hi.equals(((Scope)o).hi));
    }
    
    public String gS() {
        return this.hi;
    }
    
    public int hashCode() {
        return this.hi.hashCode();
    }
    
    public String toString() {
        return this.hi;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        x.hp(this, parcel, n);
    }
}
