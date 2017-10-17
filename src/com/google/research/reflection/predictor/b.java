// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.predictor;

import java.io.DataInputStream;
import java.io.DataOutputStream;

public abstract class b
{
    private a LG;
    
    public static b TC(final String s) {
        if (!s.equals("neural_predictor") && !s.equals("com.google.research.reflection.predictor.g")) {
            return null;
        }
        return new g();
    }
    
    public static String TG(final b b) {
        if (!(b instanceof g)) {
            return null;
        }
        return "neural_predictor";
    }
    
    public void TB(final String s, final String s2) {
    }
    
    public abstract e TD(final com.google.research.reflection.a.b p0);
    
    public void TE(final a lg) {
        this.LG = lg;
    }
    
    public abstract void TF(final Integer p0, final Integer p1, final String p2);
    
    public abstract void TH(final DataOutputStream p0);
    
    public abstract e TI(final float[] p0, final com.google.research.reflection.a.b p1);
    
    public abstract void TJ(final DataInputStream p0);
    
    public final a TK() {
        return this.LG;
    }
}
