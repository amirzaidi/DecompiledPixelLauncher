// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class NetworkStateImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int mv;
    private final int mw;
    private final int mx;
    
    static {
        CREATOR = (Parcelable$Creator)new l();
    }
    
    NetworkStateImpl(final int mw, final int mv, final int mx) {
        this.mw = mw;
        this.mv = mv;
        this.mx = mx;
    }
    
    public static String pA(final int n) {
        switch (n) {
            default: {
                return new StringBuilder(37).append("unknown connection state: ").append(n).toString();
            }
            case 1: {
                return "DISCONNECTED";
            }
            case 2: {
                return "ON_WIFI";
            }
            case 3: {
                return "ON_CELLULAR";
            }
        }
    }
    
    public static String pC(final int n) {
        switch (n) {
            default: {
                return new StringBuilder(32).append("unknown meter state: ").append(n).toString();
            }
            case 1: {
                return "METERED";
            }
            case 2: {
                return "UNMETERED";
            }
        }
    }
    
    int pB() {
        return this.mx;
    }
    
    public int pD() {
        return this.mv;
    }
    
    int pE() {
        return this.mw;
    }
    
    public String toString() {
        final String value = String.valueOf(pA(this.mv));
        final String value2 = String.valueOf(pC(this.mx));
        return new StringBuilder(String.valueOf(value).length() + 41 + String.valueOf(value2).length()).append("ConnectionState = ").append(value).append(" NetworkMeteredState = ").append(value2).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.ri(this, parcel, n);
    }
}
