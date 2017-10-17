// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class PolygonOptions extends AbstractSafeParcelable
{
    public static final m CREATOR;
    private final int FA;
    private final List FB;
    private boolean Ft;
    private final List Fu;
    private int Fv;
    private boolean Fw;
    private boolean Fx;
    private int Fy;
    private float Fz;
    private float mStrokeWidth;
    
    static {
        CREATOR = new m();
    }
    
    public PolygonOptions() {
        final boolean b = true;
        this.mStrokeWidth = 10.0f;
        this.Fv = -16777216;
        this.Fy = 0;
        this.Fz = 0.0f;
        this.Fw = b;
        this.Ft = false;
        this.Fx = false;
        this.FA = (b ? 1 : 0);
        this.Fu = new ArrayList();
        this.FB = new ArrayList();
    }
    
    PolygonOptions(final int fa, final List fu, final List fb, final float mStrokeWidth, final int fv, final int fy, final float fz, final boolean fw, final boolean ft, final boolean fx) {
        this.mStrokeWidth = 10.0f;
        this.Fv = -16777216;
        this.Fy = 0;
        this.Fz = 0.0f;
        this.Fw = true;
        this.Ft = false;
        this.Fx = false;
        this.FA = fa;
        this.Fu = fu;
        this.FB = fb;
        this.mStrokeWidth = mStrokeWidth;
        this.Fv = fv;
        this.Fy = fy;
        this.Fz = fz;
        this.Fw = fw;
        this.Ft = ft;
        this.Fx = fx;
    }
    
    public float JC() {
        return this.Fz;
    }
    
    public boolean JD() {
        return this.Ft;
    }
    
    public float JE() {
        return this.mStrokeWidth;
    }
    
    List JF() {
        return this.FB;
    }
    
    public boolean JG() {
        return this.Fx;
    }
    
    int JH() {
        return this.FA;
    }
    
    public int JI() {
        return this.Fv;
    }
    
    public int JJ() {
        return this.Fy;
    }
    
    public List JK() {
        return this.Fu;
    }
    
    public boolean isVisible() {
        return this.Fw;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        m.KJ(this, parcel, n);
    }
}
