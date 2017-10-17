// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.Comparator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class DetectedActivity extends AbstractSafeParcelable
{
    public static final j CREATOR;
    public static final Comparator Ea;
    public static final int[] Eb;
    public static final int[] Ed;
    int DY;
    int DZ;
    private final int Ec;
    
    static {
        final int n = 4;
        final int n2 = 10;
        final int n3 = 2;
        final int n4 = 1;
        Ea = new w();
        final int[] eb = new int[n3];
        eb[0] = 9;
        eb[n4] = n2;
        Eb = eb;
        final int[] ed = new int[13];
        ed[0] = 0;
        ed[n4] = n4;
        ed[n3] = n3;
        ed[ed[3] = n] = 5;
        ed[ed[5] = 6] = 7;
        ed[ed[7] = 8] = n2;
        ed[9] = 11;
        ed[n2] = 12;
        ed[11] = 13;
        ed[12] = 14;
        Ed = ed;
        CREATOR = new j();
    }
    
    public DetectedActivity(final int ec, final int dy, final int dz) {
        this.Ec = ec;
        this.DY = dy;
        this.DZ = dz;
    }
    
    private int HI(final int n) {
        if (n <= 15) {
            return n;
        }
        return 4;
    }
    
    public static String HK(final int n) {
        switch (n) {
            default: {
                return Integer.toString(n);
            }
            case 0: {
                return "IN_VEHICLE";
            }
            case 1: {
                return "ON_BICYCLE";
            }
            case 2: {
                return "ON_FOOT";
            }
            case 3: {
                return "STILL";
            }
            case 4: {
                return "UNKNOWN";
            }
            case 5: {
                return "TILTING";
            }
            case 7: {
                return "WALKING";
            }
            case 8: {
                return "RUNNING";
            }
        }
    }
    
    public int HH() {
        return this.DZ;
    }
    
    public int HJ() {
        return this.HI(this.DY);
    }
    
    public int HL() {
        return this.Ec;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o != null && this.getClass() == o.getClass()) {
            final DetectedActivity detectedActivity = (DetectedActivity)o;
            if (this.DY != detectedActivity.DY || this.DZ != detectedActivity.DZ) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.DY, this.DZ);
    }
    
    public String toString() {
        final String value = String.valueOf(HK(this.HJ()));
        return new StringBuilder(String.valueOf(value).length() + 48).append("DetectedActivity [type=").append(value).append(", confidence=").append(this.DZ).append("]").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.Ig(this, parcel, n);
    }
}
