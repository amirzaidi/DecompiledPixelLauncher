// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class LocationSettingsResult extends AbstractSafeParcelable implements b
{
    public static final Parcelable$Creator CREATOR;
    private final LocationSettingsStates CO;
    private final Status CP;
    private final int CQ;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    LocationSettingsResult(final int cq, final Status cp, final LocationSettingsStates co) {
        this.CQ = cq;
        this.CP = cp;
        this.CO = co;
    }
    
    public LocationSettingsStates Hu() {
        return this.CO;
    }
    
    public int Hv() {
        return this.CQ;
    }
    
    public Status dr() {
        return this.CP;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.Hm(this, parcel, n);
    }
}
