// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class GestureEvent extends AbstractSafeParcelable
{
    public static final g CREATOR;
    private final boolean Ee;
    private final boolean Ef;
    private final int Eg;
    private final long Eh;
    private final long Ei;
    private final int Ej;
    private final int Ek;
    
    static {
        CREATOR = new g();
    }
    
    GestureEvent(final int eg, final int ek, final long eh, final long ei, final int ej, final boolean ef, final boolean ee) {
        this.Eg = eg;
        this.Ek = ek;
        this.Eh = eh;
        this.Ei = ei;
        this.Ej = ej;
        this.Ef = ef;
        this.Ee = ee;
    }
    
    public boolean HM() {
        return this.Ef;
    }
    
    public int HN() {
        return this.Ej;
    }
    
    public boolean HO() {
        return this.Ee;
    }
    
    public int HP() {
        return this.Ek;
    }
    
    public int HQ() {
        return this.Eg;
    }
    
    public long HR() {
        return this.Ei;
    }
    
    public long HS() {
        return this.Eh;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final g creator = GestureEvent.CREATOR;
        g.HV(this, parcel, n);
    }
}
