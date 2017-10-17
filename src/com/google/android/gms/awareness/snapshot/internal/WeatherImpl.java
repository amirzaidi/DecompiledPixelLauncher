// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import com.google.android.gms.internal.J;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class WeatherImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final float gf;
    private final float gg;
    private final int[] gh;
    private final int gi;
    private final float gj;
    private final int gk;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    WeatherImpl(final int gi, final float gg, final float gj, final float gf, final int gk, final int[] gh) {
        this.gi = gi;
        this.gg = gg;
        this.gj = gj;
        this.gf = gf;
        this.gk = gk;
        this.gh = gh;
    }
    
    static float fi(final int n, final float n2) {
        switch (n) {
            default: {
                J.th("WeatherImpl", "Invalid temperature unit %s", n);
                throw new IllegalArgumentException("Invalid temperature unit");
            }
            case 1: {
                return n2;
            }
            case 2: {
                return fj(n2);
            }
        }
    }
    
    private static float fj(final float n) {
        return (n - 32.0f) * 5.0f / 9.0f;
    }
    
    public float fk(final int n) {
        return fi(n, this.gg);
    }
    
    public float fl() {
        return this.gg;
    }
    
    public float fm(final int n) {
        return fi(n, this.gj);
    }
    
    public int[] fn() {
        return this.gh;
    }
    
    public float fo() {
        return this.gf;
    }
    
    public float fp() {
        return this.gj;
    }
    
    public int fq() {
        return this.gk;
    }
    
    int fr() {
        return this.gi;
    }
    
    public float fs(final int n) {
        return fi(n, this.gf);
    }
    
    public String toString() {
        final int n = 2;
        final int n2 = 1;
        final StringBuilder sb = new StringBuilder();
        sb.append("Temp=").append(this.fk(n2)).append("F/").append(this.fk(n)).append("C, Feels=").append(this.fm(n2)).append("F/").append(this.fm(n)).append("C, Dew=").append(this.fs(n2)).append("F/").append(this.fs(n)).append("C, Humidity=").append(this.fq()).append(", Condition=");
        if (this.fn() != null) {
            sb.append("[");
            final int[] fn = this.fn();
            final int length = fn.length;
            int n3 = n2;
            for (int i = 0; i < length; ++i, n3 = 0) {
                final int n4 = fn[i];
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
        a.eC(this, parcel, n);
    }
}
