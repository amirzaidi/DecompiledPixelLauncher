// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.maps.model.internal.zzi$zza;
import android.os.IBinder;
import com.google.android.gms.maps.model.internal.zzi;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class TileOverlayOptions extends AbstractSafeParcelable
{
    public static final l CREATOR;
    private o DZ;
    private boolean Ea;
    private boolean Eb;
    private float Ec;
    private float Ed;
    private final int Ee;
    private zzi Ef;
    
    static {
        CREATOR = new l();
    }
    
    public TileOverlayOptions() {
        final boolean ee = true;
        this.Ea = ee;
        this.Eb = ee;
        this.Ec = 0.0f;
        this.Ee = (ee ? 1 : 0);
    }
    
    TileOverlayOptions(final int ee, final IBinder binder, final boolean ea, final float ed, final boolean eb, final float ec) {
        o dz = null;
        final boolean b = true;
        this.Ea = b;
        this.Eb = b;
        this.Ec = 0.0f;
        this.Ee = ee;
        this.Ef = zzi$zza.zznr(binder);
        if (this.Ef != null) {
            dz = new f(this);
        }
        this.DZ = dz;
        this.Ea = ea;
        this.Ed = ed;
        this.Eb = eb;
        this.Ec = ec;
    }
    
    public boolean IY() {
        return this.Eb;
    }
    
    public float IZ() {
        return this.Ec;
    }
    
    IBinder Jb() {
        return this.Ef.asBinder();
    }
    
    public float Jc() {
        return this.Ed;
    }
    
    int Jd() {
        return this.Ee;
    }
    
    public boolean isVisible() {
        return this.Ea;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.JN(this, parcel, n);
    }
}
