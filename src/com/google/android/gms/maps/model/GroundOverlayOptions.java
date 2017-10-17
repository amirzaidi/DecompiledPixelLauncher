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
    private boolean EG;
    private LatLngBounds EH;
    private boolean EI;
    private j EJ;
    private float EK;
    private float EL;
    private float EM;
    private float EN;
    private final int EO;
    private LatLng EP;
    private float EQ;
    private float ER;
    private float ES;
    
    static {
        CREATOR = new c();
    }
    
    public GroundOverlayOptions() {
        final boolean b = true;
        final float n = 0.5f;
        this.EG = b;
        this.EK = 0.0f;
        this.EQ = n;
        this.EN = n;
        this.EI = false;
        this.EO = (b ? 1 : 0);
    }
    
    GroundOverlayOptions(final int eo, final IBinder binder, final LatLng ep, final float es, final float el, final LatLngBounds eh, final float er, final float em, final boolean eg, final float ek, final float eq, final float en, final boolean ei) {
        final float n = 0.5f;
        this.EG = true;
        this.EK = 0.0f;
        this.EQ = n;
        this.EN = n;
        this.EI = false;
        this.EO = eo;
        this.EJ = new j(zzd$zza.zzis(binder));
        this.EP = ep;
        this.ES = es;
        this.EL = el;
        this.EH = eh;
        this.ER = er;
        this.EM = em;
        this.EG = eg;
        this.EK = ek;
        this.EQ = eq;
        this.EN = en;
        this.EI = ei;
    }
    
    IBinder JC() {
        return this.EJ.Jl().asBinder();
    }
    
    public LatLng JD() {
        return this.EP;
    }
    
    public float JE() {
        return this.EK;
    }
    
    public float JF() {
        return this.EN;
    }
    
    public float JG() {
        return this.EQ;
    }
    
    public float JH() {
        return this.ER;
    }
    
    public float JI() {
        return this.EM;
    }
    
    public LatLngBounds JJ() {
        return this.EH;
    }
    
    public boolean JK() {
        return this.EI;
    }
    
    int JL() {
        return this.EO;
    }
    
    public float getHeight() {
        return this.EL;
    }
    
    public float getWidth() {
        return this.ES;
    }
    
    public boolean isVisible() {
        return this.EG;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.ID(this, parcel, n);
    }
}
