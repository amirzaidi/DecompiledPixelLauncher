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
    private LatLng EA;
    private boolean EB;
    private float EC;
    private float ED;
    private float EE;
    private float EF;
    private boolean Es;
    private String Et;
    private float Eu;
    private final int Ev;
    private float Ew;
    private boolean Ex;
    private String Ey;
    private j Ez;
    private float mAlpha;
    
    static {
        CREATOR = new d();
    }
    
    public MarkerOptions() {
        final boolean b = true;
        final float n = 1.0f;
        final float n2 = 0.5f;
        this.Ew = n2;
        this.Eu = n;
        this.EB = b;
        this.Ex = false;
        this.EF = 0.0f;
        this.ED = n2;
        this.EC = 0.0f;
        this.mAlpha = n;
        this.Ev = (b ? 1 : 0);
    }
    
    MarkerOptions(final int ev, final LatLng ea, final String ey, final String et, final IBinder binder, final float ew, final float eu, final boolean es, final boolean eb, final boolean ex, final float ef, final float ed, final float ec, final float mAlpha, final float ee) {
        this.Ew = 0.5f;
        this.Eu = 1.0f;
        this.EB = true;
        this.Ex = false;
        this.EF = 0.0f;
        this.ED = 0.5f;
        this.EC = 0.0f;
        this.mAlpha = 1.0f;
        this.Ev = ev;
        this.EA = ea;
        this.Ey = ey;
        this.Et = et;
        j ez;
        if (binder != null) {
            ez = new j(zzd$zza.zzis(binder));
        }
        else {
            ez = null;
        }
        this.Ez = ez;
        this.Ew = ew;
        this.Eu = eu;
        this.Es = es;
        this.EB = eb;
        this.Ex = ex;
        this.EF = ef;
        this.ED = ed;
        this.EC = ec;
        this.mAlpha = mAlpha;
        this.EE = ee;
    }
    
    public LatLng JA() {
        return this.EA;
    }
    
    public boolean JB() {
        return this.Es;
    }
    
    public String Jq() {
        return this.Et;
    }
    
    public float Jr() {
        return this.Eu;
    }
    
    public boolean Js() {
        return this.Ex;
    }
    
    public float Jt() {
        return this.EC;
    }
    
    public float Ju() {
        return this.EF;
    }
    
    int Jv() {
        return this.Ev;
    }
    
    public float Jw() {
        return this.Ew;
    }
    
    public float Jx() {
        return this.EE;
    }
    
    IBinder Jy() {
        IBinder binder = null;
        if (this.Ez != null) {
            binder = this.Ez.Jl().asBinder();
        }
        return binder;
    }
    
    public float Jz() {
        return this.ED;
    }
    
    public float getAlpha() {
        return this.mAlpha;
    }
    
    public String getTitle() {
        return this.Ey;
    }
    
    public boolean isVisible() {
        return this.EB;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.IH(this, parcel, n);
    }
}
