// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class FenceTriggerInfoImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final String HV;
    private final boolean HW;
    private final int HX;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    FenceTriggerInfoImpl(final int hx, final boolean hw, final String hv) {
        this.HX = hx;
        this.HW = hw;
        this.HV = hv;
    }
    
    public boolean NN() {
        return this.HW;
    }
    
    int NO() {
        return this.HX;
    }
    
    public String getKey() {
        return this.HV;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.Oc(this, parcel, n);
    }
}
