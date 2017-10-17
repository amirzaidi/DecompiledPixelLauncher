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
    public static final Comparator Cv;
    public static final int[] Cw;
    public static final int[] Cy;
    int Ct;
    int Cu;
    private final int Cx;
    
    static {
        final int n = 4;
        final int n2 = 10;
        final int n3 = 2;
        final int n4 = 1;
        Cv = new w();
        final int[] cw = new int[n3];
        cw[0] = 9;
        cw[n4] = n2;
        Cw = cw;
        final int[] cy = new int[13];
        cy[0] = 0;
        cy[n4] = n4;
        cy[n3] = n3;
        cy[cy[3] = n] = 5;
        cy[cy[5] = 6] = 7;
        cy[cy[7] = 8] = n2;
        cy[9] = 11;
        cy[n2] = 12;
        cy[11] = 13;
        cy[12] = 14;
        Cy = cy;
        CREATOR = new j();
    }
    
    public DetectedActivity(final int cx, final int ct, final int cu) {
        this.Cx = cx;
        this.Ct = ct;
        this.Cu = cu;
    }
    
    private int GP(final int n) {
        if (n <= 15) {
            return n;
        }
        return 4;
    }
    
    public static String GR(final int n) {
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
    
    public int GO() {
        return this.Cu;
    }
    
    public int GQ() {
        return this.GP(this.Ct);
    }
    
    public int GS() {
        return this.Cx;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o != null && this.getClass() == o.getClass()) {
            final DetectedActivity detectedActivity = (DetectedActivity)o;
            if (this.Ct != detectedActivity.Ct || this.Cu != detectedActivity.Cu) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.Ct, this.Cu);
    }
    
    public String toString() {
        final String value = String.valueOf(GR(this.GQ()));
        return new StringBuilder(String.valueOf(value).length() + 48).append("DetectedActivity [type=").append(value).append(", confidence=").append(this.Cu).append("]").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.Hn(this, parcel, n);
    }
}
