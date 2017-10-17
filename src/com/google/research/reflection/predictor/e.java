// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.predictor;

import java.util.ArrayList;
import java.util.Map;

public class e
{
    private float LL;
    private Map LM;
    private double[] LN;
    private ArrayList LO;
    private float[] LP;
    
    public e() {
        this.LM = null;
        this.LN = null;
        this.LP = null;
        this.LL = -1.0f;
        this.LO = null;
    }
    
    public float[] TV() {
        return this.LP;
    }
    
    public double[] TW() {
        return this.LN;
    }
    
    public void TX(final ArrayList lo) {
        this.LO = lo;
    }
    
    public void TY(final double[] ln) {
        this.LN = ln;
    }
    
    public void TZ(final float[] lp) {
        this.LP = lp;
    }
    
    public ArrayList Ua() {
        return this.LO;
    }
}
