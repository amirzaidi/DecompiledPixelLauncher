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
    private boolean DO;
    private final List DP;
    private int DQ;
    private boolean DR;
    private boolean DS;
    private int DT;
    private float DU;
    private final int DV;
    private final List DW;
    private float mStrokeWidth;
    
    static {
        CREATOR = new m();
    }
    
    public PolygonOptions() {
        final boolean b = true;
        this.mStrokeWidth = 10.0f;
        this.DQ = -16777216;
        this.DT = 0;
        this.DU = 0.0f;
        this.DR = b;
        this.DO = false;
        this.DS = false;
        this.DV = (b ? 1 : 0);
        this.DP = new ArrayList();
        this.DW = new ArrayList();
    }
    
    PolygonOptions(final int dv, final List dp, final List dw, final float mStrokeWidth, final int dq, final int dt, final float du, final boolean dr, final boolean do1, final boolean ds) {
        this.mStrokeWidth = 10.0f;
        this.DQ = -16777216;
        this.DT = 0;
        this.DU = 0.0f;
        this.DR = true;
        this.DO = false;
        this.DS = false;
        this.DV = dv;
        this.DP = dp;
        this.DW = dw;
        this.mStrokeWidth = mStrokeWidth;
        this.DQ = dq;
        this.DT = dt;
        this.DU = du;
        this.DR = dr;
        this.DO = do1;
        this.DS = ds;
    }
    
    public float IJ() {
        return this.DU;
    }
    
    public boolean IK() {
        return this.DO;
    }
    
    public float IL() {
        return this.mStrokeWidth;
    }
    
    List IM() {
        return this.DW;
    }
    
    public boolean IN() {
        return this.DS;
    }
    
    int IO() {
        return this.DV;
    }
    
    public int IP() {
        return this.DQ;
    }
    
    public int IQ() {
        return this.DT;
    }
    
    public List IR() {
        return this.DP;
    }
    
    public boolean isVisible() {
        return this.DR;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        m.JQ(this, parcel, n);
    }
}
