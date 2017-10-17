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
    private final String eA;
    final int eB;
    
    static {
        CREATOR = (Parcelable$Creator)new x();
    }
    
    Scope(final int eb, final String ea) {
        l.hp(ea, "scopeUri must not be null or empty");
        this.eB = eb;
        this.eA = ea;
    }
    
    public Scope(final String s) {
        this(1, s);
    }
    
    public String el() {
        return this.eA;
    }
    
    public boolean equals(final Object o) {
        return this == o || (o instanceof Scope && this.eA.equals(((Scope)o).eA));
    }
    
    public int hashCode() {
        return this.eA.hashCode();
    }
    
    public String toString() {
        return this.eA;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        x.eB(this, parcel, n);
    }
}
