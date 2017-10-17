// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class CircleOptions extends AbstractSafeParcelable
{
    public static final i CREATOR;
    private int GW;
    private boolean GX;
    private boolean GY;
    private int GZ;
    private float Ha;
    private double Hb;
    private final int Hc;
    private LatLng Hd;
    private float mStrokeWidth;
    
    static {
        CREATOR = new i();
    }
    
    public CircleOptions() {
        final boolean b = true;
        this.Hd = null;
        this.Hb = 0.0;
        this.mStrokeWidth = 10.0f;
        this.GW = -16777216;
        this.GZ = 0;
        this.Ha = 0.0f;
        this.GX = b;
        this.GY = false;
        this.Hc = (b ? 1 : 0);
    }
    
    CircleOptions(final int hc, final LatLng hd, final double hb, final float mStrokeWidth, final int gw, final int gz, final float ha, final boolean gx, final boolean gy) {
        this.Hd = null;
        this.Hb = 0.0;
        this.mStrokeWidth = 10.0f;
        this.GW = -16777216;
        this.GZ = 0;
        this.Ha = 0.0f;
        this.GX = true;
        this.GY = false;
        this.Hc = hc;
        this.Hd = hd;
        this.Hb = hb;
        this.mStrokeWidth = mStrokeWidth;
        this.GW = gw;
        this.GZ = gz;
        this.Ha = ha;
        this.GX = gx;
        this.GY = gy;
    }
    
    public LatLng Lk() {
        return this.Hd;
    }
    
    public float Ll() {
        return this.Ha;
    }
    
    public float Lm() {
        return this.mStrokeWidth;
    }
    
    public boolean Ln() {
        return this.GY;
    }
    
    int Lo() {
        return this.Hc;
    }
    
    public int Lp() {
        return this.GW;
    }
    
    public int Lq() {
        return this.GZ;
    }
    
    public double getRadius() {
        return this.Hb;
    }
    
    public boolean isVisible() {
        return this.GX;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.Kd(this, parcel, n);
    }
}
