// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.dynamic.zzd$zza;
import android.os.IBinder;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class MarkerOptions extends AbstractSafeParcelable
{
    public static final d CREATOR;
    private boolean FX;
    private String FY;
    private float FZ;
    private final int Ga;
    private float Gb;
    private boolean Gc;
    private String Gd;
    private j Ge;
    private LatLng Gf;
    private boolean Gg;
    private float Gh;
    private float Gi;
    private float Gj;
    private float Gk;
    private float mAlpha;
    
    static {
        CREATOR = new d();
    }
    
    public MarkerOptions() {
        final boolean b = true;
        final float n = 1.0f;
        final float n2 = 0.5f;
        this.Gb = n2;
        this.FZ = n;
        this.Gg = b;
        this.Gc = false;
        this.Gk = 0.0f;
        this.Gi = n2;
        this.Gh = 0.0f;
        this.mAlpha = n;
        this.Ga = (b ? 1 : 0);
    }
    
    MarkerOptions(final int ga, final LatLng gf, final String gd, final String fy, final IBinder binder, final float gb, final float fz, final boolean fx, final boolean gg, final boolean gc, final float gk, final float gi, final float gh, final float mAlpha, final float gj) {
        this.Gb = 0.5f;
        this.FZ = 1.0f;
        this.Gg = true;
        this.Gc = false;
        this.Gk = 0.0f;
        this.Gi = 0.5f;
        this.Gh = 0.0f;
        this.mAlpha = 1.0f;
        this.Ga = ga;
        this.Gf = gf;
        this.Gd = gd;
        this.FY = fy;
        j ge;
        if (binder != null) {
            ge = new j(zzd$zza.zzis(binder));
        }
        else {
            ge = null;
        }
        this.Ge = ge;
        this.Gb = gb;
        this.FZ = fz;
        this.FX = fx;
        this.Gg = gg;
        this.Gc = gc;
        this.Gk = gk;
        this.Gi = gi;
        this.Gh = gh;
        this.mAlpha = mAlpha;
        this.Gj = gj;
    }
    
    public String Kj() {
        return this.FY;
    }
    
    public float Kk() {
        return this.FZ;
    }
    
    public boolean Kl() {
        return this.Gc;
    }
    
    public float Km() {
        return this.Gh;
    }
    
    public float Kn() {
        return this.Gk;
    }
    
    int Ko() {
        return this.Ga;
    }
    
    public float Kp() {
        return this.Gb;
    }
    
    public float Kq() {
        return this.Gj;
    }
    
    IBinder Kr() {
        IBinder binder = null;
        if (this.Ge != null) {
            binder = this.Ge.Ke().asBinder();
        }
        return binder;
    }
    
    public float Ks() {
        return this.Gi;
    }
    
    public LatLng Kt() {
        return this.Gf;
    }
    
    public boolean Ku() {
        return this.FX;
    }
    
    public float getAlpha() {
        return this.mAlpha;
    }
    
    public String getTitle() {
        return this.Gd;
    }
    
    public boolean isVisible() {
        return this.Gg;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.JA(this, parcel, n);
    }
}
