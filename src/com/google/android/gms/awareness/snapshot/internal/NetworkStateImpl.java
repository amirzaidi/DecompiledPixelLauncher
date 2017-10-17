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
    private final int fS;
    private final int fT;
    private final int fU;
    
    static {
        CREATOR = (Parcelable$Creator)new l();
    }
    
    NetworkStateImpl(final int ft, final int fs, final int fu) {
        this.fT = ft;
        this.fS = fs;
        this.fU = fu;
    }
    
    public static String eu(final int n) {
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
    
    public static String ew(final int n) {
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
    
    int ev() {
        return this.fU;
    }
    
    public int ex() {
        return this.fS;
    }
    
    int ey() {
        return this.fT;
    }
    
    public String toString() {
        final String value = String.valueOf(eu(this.fS));
        final String value2 = String.valueOf(ew(this.fU));
        return new StringBuilder(String.valueOf(value).length() + 41 + String.valueOf(value2).length()).append("ConnectionState = ").append(value).append(" NetworkMeteredState = ").append(value2).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.gc(this, parcel, n);
    }
}
