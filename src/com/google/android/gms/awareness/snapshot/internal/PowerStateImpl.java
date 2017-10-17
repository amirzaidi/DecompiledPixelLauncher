// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class PowerStateImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int gG;
    private final int gH;
    private final double gI;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    PowerStateImpl(final int gg, final int gh, final double gi) {
        this.gG = gg;
        this.gH = gh;
        this.gI = gi;
    }
    
    public static String fY(final int n) {
        switch (n) {
            default: {
                return new StringBuilder(36).append("unknown plugged in state=").append(n).toString();
            }
            case 1: {
                return "POWER_DISCONNECTED";
            }
            case 2: {
                return "POWER_CONNECTED_USB";
            }
            case 3: {
                return "POWER_CONNECTED_AC";
            }
            case 4: {
                return "POWER_CONNECTED_WIRELESS";
            }
        }
    }
    
    public double fX() {
        return this.gI;
    }
    
    public int fZ() {
        return this.gH;
    }
    
    int ga() {
        return this.gG;
    }
    
    public String toString() {
        final String value = String.valueOf(fY(this.gH));
        return new StringBuilder(String.valueOf(value).length() + 69).append("PowerConnectionState = ").append(value).append(" Battery Percentage = ").append(this.gI).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.eF(this, parcel, n);
    }
}
