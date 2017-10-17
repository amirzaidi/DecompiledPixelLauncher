// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.app.PendingIntent;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class ConnectionResult extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    public static final ConnectionResult nk;
    private final PendingIntent nl;
    final int nm;
    private final String nn;
    private final int no;
    
    static {
        nk = new ConnectionResult(0);
        CREATOR = (Parcelable$Creator)new h();
    }
    
    public ConnectionResult(final int n) {
        this(n, null, null);
    }
    
    ConnectionResult(final int nm, final int no, final PendingIntent nl, final String nn) {
        this.nm = nm;
        this.no = no;
        this.nl = nl;
        this.nn = nn;
    }
    
    public ConnectionResult(final int n, final PendingIntent pendingIntent) {
        this(n, pendingIntent, null);
    }
    
    public ConnectionResult(final int n, final PendingIntent pendingIntent, final String s) {
        this(1, n, pendingIntent, s);
    }
    
    static String qg(final int n) {
        switch (n) {
            default: {
                return new StringBuilder(31).append("UNKNOWN_ERROR_CODE(").append(n).append(")").toString();
            }
            case 0: {
                return "SUCCESS";
            }
            case 1: {
                return "SERVICE_MISSING";
            }
            case 2: {
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            }
            case 3: {
                return "SERVICE_DISABLED";
            }
            case 4: {
                return "SIGN_IN_REQUIRED";
            }
            case 5: {
                return "INVALID_ACCOUNT";
            }
            case 6: {
                return "RESOLUTION_REQUIRED";
            }
            case 7: {
                return "NETWORK_ERROR";
            }
            case 8: {
                return "INTERNAL_ERROR";
            }
            case 9: {
                return "SERVICE_INVALID";
            }
            case 10: {
                return "DEVELOPER_ERROR";
            }
            case 11: {
                return "LICENSE_CHECK_FAILED";
            }
            case 13: {
                return "CANCELED";
            }
            case 14: {
                return "TIMEOUT";
            }
            case 15: {
                return "INTERRUPTED";
            }
            case 16: {
                return "API_UNAVAILABLE";
            }
            case 17: {
                return "SIGN_IN_FAILED";
            }
            case 18: {
                return "SERVICE_UPDATING";
            }
            case 19: {
                return "SERVICE_MISSING_PERMISSION";
            }
            case 20: {
                return "RESTRICTED_PROFILE";
            }
            case 21: {
                return "API_VERSION_UPDATE_REQUIRED";
            }
            case 42: {
                return "UPDATE_ANDROID_WEAR";
            }
            case 1500: {
                return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
            }
            case 99: {
                return "UNFINISHED";
            }
            case -1: {
                return "UNKNOWN";
            }
        }
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (o == this) {
            return b;
        }
        if (o instanceof ConnectionResult) {
            final ConnectionResult connectionResult = (ConnectionResult)o;
            if (this.no != connectionResult.no || !u.kv(this.nl, connectionResult.nl) || u.kv(this.nn, connectionResult.nn)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.no, this.nl, this.nn);
    }
    
    public int qh() {
        return this.no;
    }
    
    public String qi() {
        return this.nn;
    }
    
    public boolean qj() {
        boolean b = false;
        if (this.no == 0) {
            b = true;
        }
        return b;
    }
    
    public boolean qk() {
        boolean b = false;
        if (this.no != 0 && this.nl != null) {
            b = true;
        }
        return b;
    }
    
    public PendingIntent ql() {
        return this.nl;
    }
    
    public String toString() {
        return u.kx(this).kp("statusCode", qg(this.no)).kp("resolution", this.nl).kp("message", this.nn).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.qJ(this, parcel, n);
    }
}
