// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class LocationSettingsStates extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final boolean Db;
    private final boolean Dc;
    private final int Dd;
    private final boolean De;
    private final boolean Df;
    private final boolean Dg;
    private final boolean Dh;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    LocationSettingsStates(final int dd, final boolean db, final boolean df, final boolean de, final boolean dh, final boolean dg, final boolean dc) {
        this.Dd = dd;
        this.Db = db;
        this.Df = df;
        this.De = de;
        this.Dh = dh;
        this.Dg = dg;
        this.Dc = dc;
    }
    
    public boolean HF() {
        return this.Dh;
    }
    
    public boolean HG() {
        return this.Df;
    }
    
    public int HH() {
        return this.Dd;
    }
    
    public boolean HI() {
        return this.Db;
    }
    
    public boolean HJ() {
        return this.Dg;
    }
    
    public boolean HK() {
        return this.De;
    }
    
    public boolean HL() {
        return this.Dc;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.GM(this, parcel, n);
    }
}
