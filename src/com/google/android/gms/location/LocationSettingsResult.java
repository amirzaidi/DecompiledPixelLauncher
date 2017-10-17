// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class LocationSettingsResult extends AbstractSafeParcelable implements m
{
    public static final Parcelable$Creator CREATOR;
    private final LocationSettingsStates Et;
    private final Status Eu;
    private final int Ev;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    LocationSettingsResult(final int ev, final Status eu, final LocationSettingsStates et) {
        this.Ev = ev;
        this.Eu = eu;
        this.Et = et;
    }
    
    public LocationSettingsStates In() {
        return this.Et;
    }
    
    public int Io() {
        return this.Ev;
    }
    
    public Status gV() {
        return this.Eu;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.If(this, parcel, n);
    }
}
