// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import com.google.android.gms.internal.P;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class WeatherImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final float mI;
    private final float mJ;
    private final int[] mK;
    private final int mL;
    private final float mM;
    private final int mN;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    WeatherImpl(final int ml, final float mj, final float mm, final float mi, final int mn, final int[] mk) {
        this.mL = ml;
        this.mJ = mj;
        this.mM = mm;
        this.mI = mi;
        this.mN = mn;
        this.mK = mk;
    }
    
    static float qo(final int n, final float n2) {
        switch (n) {
            default: {
                P.ti("WeatherImpl", "Invalid temperature unit %s", n);
                throw new IllegalArgumentException("Invalid temperature unit");
            }
            case 1: {
                return n2;
            }
            case 2: {
                return qp(n2);
            }
        }
    }
    
    private static float qp(final float n) {
        return (n - 32.0f) * 5.0f / 9.0f;
    }
    
    public float qq(final int n) {
        return qo(n, this.mJ);
    }
    
    public float qr() {
        return this.mJ;
    }
    
    public float qs(final int n) {
        return qo(n, this.mM);
    }
    
    public int[] qt() {
        return this.mK;
    }
    
    public float qu() {
        return this.mI;
    }
    
    public float qv() {
        return this.mM;
    }
    
    public int qw() {
        return this.mN;
    }
    
    int qx() {
        return this.mL;
    }
    
    public float qy(final int n) {
        return qo(n, this.mI);
    }
    
    public String toString() {
        final int n = 2;
        final int n2 = 1;
        final StringBuilder sb = new StringBuilder();
        sb.append("Temp=").append(this.qq(n2)).append("F/").append(this.qq(n)).append("C, Feels=").append(this.qs(n2)).append("F/").append(this.qs(n)).append("C, Dew=").append(this.qy(n2)).append("F/").append(this.qy(n)).append("C, Humidity=").append(this.qw()).append(", Condition=");
        if (this.qt() != null) {
            sb.append("[");
            final int[] qt = this.qt();
            final int length = qt.length;
            int n3 = n2;
            for (int i = 0; i < length; ++i, n3 = 0) {
                final int n4 = qt[i];
                if (n3 == 0) {
                    sb.append(",");
                }
                sb.append(n4);
            }
            sb.append("]");
        }
        else {
            sb.append("unknown");
        }
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.pI(this, parcel, n);
    }
}
