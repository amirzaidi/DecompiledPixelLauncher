// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.predictor;

import java.util.ArrayList;
import java.util.Map;

public class e
{
    private float MF;
    private Map MG;
    private double[] MH;
    private ArrayList MI;
    private float[] MJ;
    
    public e() {
        this.MG = null;
        this.MH = null;
        this.MJ = null;
        this.MF = -1.0f;
        this.MI = null;
    }
    
    public float[] SI() {
        return this.MJ;
    }
    
    public double[] SJ() {
        return this.MH;
    }
    
    public void SK(final ArrayList mi) {
        this.MI = mi;
    }
    
    public void SL(final double[] mh) {
        this.MH = mh;
    }
    
    public void SM(final float[] mj) {
        this.MJ = mj;
    }
    
    public ArrayList SN() {
        return this.MI;
    }
}
