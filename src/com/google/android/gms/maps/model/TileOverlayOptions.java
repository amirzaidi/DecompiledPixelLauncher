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
    private n FE;
    private boolean FF;
    private boolean FG;
    private float FH;
    private float FI;
    private final int FJ;
    private zzi FK;
    
    static {
        CREATOR = new l();
    }
    
    public TileOverlayOptions() {
        final boolean fj = true;
        this.FF = fj;
        this.FG = fj;
        this.FH = 0.0f;
        this.FJ = (fj ? 1 : 0);
    }
    
    TileOverlayOptions(final int fj, final IBinder binder, final boolean ff, final float fi, final boolean fg, final float fh) {
        n fe = null;
        final boolean b = true;
        this.FF = b;
        this.FG = b;
        this.FH = 0.0f;
        this.FJ = fj;
        this.FK = zzi$zza.zznr(binder);
        if (this.FK != null) {
            fe = new f(this);
        }
        this.FE = fe;
        this.FF = ff;
        this.FI = fi;
        this.FG = fg;
        this.FH = fh;
    }
    
    public boolean JR() {
        return this.FG;
    }
    
    public float JS() {
        return this.FH;
    }
    
    IBinder JU() {
        return this.FK.asBinder();
    }
    
    public float JV() {
        return this.FI;
    }
    
    int JW() {
        return this.FJ;
    }
    
    public boolean isVisible() {
        return this.FF;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.KG(this, parcel, n);
    }
}
