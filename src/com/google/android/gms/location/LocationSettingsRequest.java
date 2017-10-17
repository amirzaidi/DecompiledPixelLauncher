// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import java.util.Collections;
import java.util.List;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class LocationSettingsRequest extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final boolean Ew;
    private final int Ex;
    private final boolean Ey;
    private final List Ez;
    
    static {
        CREATOR = (Parcelable$Creator)new m();
    }
    
    LocationSettingsRequest(final int ex, final List ez, final boolean ey, final boolean ew) {
        this.Ex = ex;
        this.Ez = ez;
        this.Ey = ey;
        this.Ew = ew;
    }
    
    public boolean Ip() {
        return this.Ey;
    }
    
    public boolean Iq() {
        return this.Ew;
    }
    
    public List Ir() {
        return Collections.unmodifiableList((List<?>)this.Ez);
    }
    
    public int Is() {
        return this.Ex;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        m.Iv(this, parcel, n);
    }
}
