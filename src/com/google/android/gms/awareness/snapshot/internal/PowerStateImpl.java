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
    private final int nj;
    private final int nk;
    private final double nl;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    PowerStateImpl(final int nj, final int nk, final double nl) {
        this.nj = nj;
        this.nk = nk;
        this.nl = nl;
    }
    
    public static String re(final int n) {
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
    
    public double rd() {
        return this.nl;
    }
    
    public int rf() {
        return this.nk;
    }
    
    int rg() {
        return this.nj;
    }
    
    public String toString() {
        final String value = String.valueOf(re(this.nk));
        return new StringBuilder(String.valueOf(value).length() + 69).append("PowerConnectionState = ").append(value).append(" Battery Percentage = ").append(this.nl).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.pL(this, parcel, n);
    }
}
