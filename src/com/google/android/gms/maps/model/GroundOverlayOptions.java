// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.dynamic.zzd$zza;
import android.os.IBinder;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class GroundOverlayOptions extends AbstractSafeParcelable
{
    public static final c CREATOR;
    private boolean Gl;
    private LatLngBounds Gm;
    private boolean Gn;
    private j Go;
    private float Gp;
    private float Gq;
    private float Gr;
    private float Gs;
    private final int Gt;
    private LatLng Gu;
    private float Gv;
    private float Gw;
    private float Gx;
    
    static {
        CREATOR = new c();
    }
    
    public GroundOverlayOptions() {
        final boolean b = true;
        final float n = 0.5f;
        this.Gl = b;
        this.Gp = 0.0f;
        this.Gv = n;
        this.Gs = n;
        this.Gn = false;
        this.Gt = (b ? 1 : 0);
    }
    
    GroundOverlayOptions(final int gt, final IBinder binder, final LatLng gu, final float gx, final float gq, final LatLngBounds gm, final float gw, final float gr, final boolean gl, final float gp, final float gv, final float gs, final boolean gn) {
        final float n = 0.5f;
        this.Gl = true;
        this.Gp = 0.0f;
        this.Gv = n;
        this.Gs = n;
        this.Gn = false;
        this.Gt = gt;
        this.Go = new j(zzd$zza.zzis(binder));
        this.Gu = gu;
        this.Gx = gx;
        this.Gq = gq;
        this.Gm = gm;
        this.Gw = gw;
        this.Gr = gr;
        this.Gl = gl;
        this.Gp = gp;
        this.Gv = gv;
        this.Gs = gs;
        this.Gn = gn;
    }
    
    public float KA() {
        return this.Gw;
    }
    
    public float KB() {
        return this.Gr;
    }
    
    public LatLngBounds KC() {
        return this.Gm;
    }
    
    public boolean KD() {
        return this.Gn;
    }
    
    int KE() {
        return this.Gt;
    }
    
    IBinder Kv() {
        return this.Go.Ke().asBinder();
    }
    
    public LatLng Kw() {
        return this.Gu;
    }
    
    public float Kx() {
        return this.Gp;
    }
    
    public float Ky() {
        return this.Gs;
    }
    
    public float Kz() {
        return this.Gv;
    }
    
    public float getHeight() {
        return this.Gq;
    }
    
    public float getWidth() {
        return this.Gx;
    }
    
    public boolean isVisible() {
        return this.Gl;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.Jw(this, parcel, n);
    }
}
