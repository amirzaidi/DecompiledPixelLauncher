// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class PolylineOptions extends AbstractSafeParcelable
{
    public static final g CREATOR;
    private boolean GO;
    private final List GP;
    private boolean GQ;
    private int GR;
    private boolean GS;
    private float GT;
    private final int GU;
    private float GV;
    
    static {
        CREATOR = new g();
    }
    
    public PolylineOptions() {
        final boolean b = true;
        this.GV = 10.0f;
        this.GR = -16777216;
        this.GT = 0.0f;
        this.GQ = b;
        this.GO = false;
        this.GS = false;
        this.GU = (b ? 1 : 0);
        this.GP = new ArrayList();
    }
    
    PolylineOptions(final int gu, final List gp, final float gv, final int gr, final float gt, final boolean gq, final boolean go, final boolean gs) {
        this.GV = 10.0f;
        this.GR = -16777216;
        this.GT = 0.0f;
        this.GQ = true;
        this.GO = false;
        this.GS = false;
        this.GU = gu;
        this.GP = gp;
        this.GV = gv;
        this.GR = gr;
        this.GT = gt;
        this.GQ = gq;
        this.GO = go;
        this.GS = gs;
    }
    
    public int KY() {
        return this.GR;
    }
    
    public float KZ() {
        return this.GT;
    }
    
    public boolean La() {
        return this.GO;
    }
    
    public boolean Lb() {
        return this.GS;
    }
    
    int Lc() {
        return this.GU;
    }
    
    public List Ld() {
        return this.GP;
    }
    
    public float getWidth() {
        return this.GV;
    }
    
    public boolean isVisible() {
        return this.GQ;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.JP(this, parcel, n);
    }
}
