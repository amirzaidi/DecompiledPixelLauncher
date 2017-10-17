// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.predictor;

public class f implements Comparable
{
    public float MK;
    public String ML;
    
    public f(final String ml, final float mk) {
        this.ML = ml;
        this.MK = mk;
    }
    
    public int SO(final f f) {
        return Float.compare(this.MK, f.MK);
    }
}
