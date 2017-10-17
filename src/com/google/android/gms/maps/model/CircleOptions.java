// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class CircleOptions extends AbstractSafeParcelable
{
    public static final i CREATOR;
    private int Fr;
    private boolean Fs;
    private boolean Ft;
    private int Fu;
    private float Fv;
    private double Fw;
    private final int Fx;
    private LatLng Fy;
    private float mStrokeWidth;
    
    static {
        CREATOR = new i();
    }
    
    public CircleOptions() {
        final boolean b = true;
        this.Fy = null;
        this.Fw = 0.0;
        this.mStrokeWidth = 10.0f;
        this.Fr = -16777216;
        this.Fu = 0;
        this.Fv = 0.0f;
        this.Fs = b;
        this.Ft = false;
        this.Fx = (b ? 1 : 0);
    }
    
    CircleOptions(final int fx, final LatLng fy, final double fw, final float mStrokeWidth, final int fr, final int fu, final float fv, final boolean fs, final boolean ft) {
        this.Fy = null;
        this.Fw = 0.0;
        this.mStrokeWidth = 10.0f;
        this.Fr = -16777216;
        this.Fu = 0;
        this.Fv = 0.0f;
        this.Fs = true;
        this.Ft = false;
        this.Fx = fx;
        this.Fy = fy;
        this.Fw = fw;
        this.mStrokeWidth = mStrokeWidth;
        this.Fr = fr;
        this.Fu = fu;
        this.Fv = fv;
        this.Fs = fs;
        this.Ft = ft;
    }
    
    public LatLng Kr() {
        return this.Fy;
    }
    
    public float Ks() {
        return this.Fv;
    }
    
    public float Kt() {
        return this.mStrokeWidth;
    }
    
    public boolean Ku() {
        return this.Ft;
    }
    
    int Kv() {
        return this.Fx;
    }
    
    public int Kw() {
        return this.Fr;
    }
    
    public int Kx() {
        return this.Fu;
    }
    
    public double getRadius() {
        return this.Fw;
    }
    
    public boolean isVisible() {
        return this.Fs;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.Jk(this, parcel, n);
    }
}
