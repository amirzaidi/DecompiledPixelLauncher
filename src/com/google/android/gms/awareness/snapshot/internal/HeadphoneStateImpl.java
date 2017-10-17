// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class HeadphoneStateImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int mA;
    private final int mB;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    HeadphoneStateImpl(final int mb, final int ma) {
        this.mB = mb;
        this.mA = ma;
    }
    
    public int getState() {
        return this.mA;
    }
    
    int pZ() {
        return this.mB;
    }
    
    public String toString() {
        switch (this.mA) {
            default: {
                return new StringBuilder(35).append("unknown headphone state=").append(this.mA).toString();
            }
            case 1: {
                return "HEADPHONE_PLUGGED";
            }
            case 2: {
                return "HEADPHONE_UNPLUGGED";
            }
        }
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.qi(this, parcel, n);
    }
}
