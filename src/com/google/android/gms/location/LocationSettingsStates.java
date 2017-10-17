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
    private final boolean EG;
    private final boolean EH;
    private final int EI;
    private final boolean EJ;
    private final boolean EK;
    private final boolean EL;
    private final boolean EM;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    LocationSettingsStates(final int ei, final boolean eg, final boolean ek, final boolean ej, final boolean em, final boolean el, final boolean eh) {
        this.EI = ei;
        this.EG = eg;
        this.EK = ek;
        this.EJ = ej;
        this.EM = em;
        this.EL = el;
        this.EH = eh;
    }
    
    public int IA() {
        return this.EI;
    }
    
    public boolean IB() {
        return this.EG;
    }
    
    public boolean IC() {
        return this.EL;
    }
    
    public boolean ID() {
        return this.EJ;
    }
    
    public boolean IE() {
        return this.EH;
    }
    
    public boolean Iy() {
        return this.EM;
    }
    
    public boolean Iz() {
        return this.EK;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.HF(this, parcel, n);
    }
}
