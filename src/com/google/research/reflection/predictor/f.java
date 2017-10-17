// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.predictor;

public class f implements Comparable
{
    public float LQ;
    public String LR;
    
    public f(final String lr, final float lq) {
        this.LR = lr;
        this.LQ = lq;
    }
    
    public int Ub(final f f) {
        return Float.compare(this.LQ, f.LQ);
    }
}
