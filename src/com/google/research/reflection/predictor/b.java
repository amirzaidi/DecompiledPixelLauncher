// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.predictor;

import java.io.DataInputStream;
import java.io.DataOutputStream;

public abstract class b
{
    private a MA;
    
    public static b Sp(final String s) {
        if (!s.equals("neural_predictor") && !s.equals("com.google.research.reflection.predictor.g")) {
            return null;
        }
        return new g();
    }
    
    public static String St(final b b) {
        if (!(b instanceof g)) {
            return null;
        }
        return "neural_predictor";
    }
    
    public void So(final String s, final String s2) {
    }
    
    public abstract e Sq(final com.google.research.reflection.a.b p0);
    
    public void Sr(final a ma) {
        this.MA = ma;
    }
    
    public abstract void Ss(final Integer p0, final Integer p1, final String p2);
    
    public abstract void Su(final DataOutputStream p0);
    
    public abstract e Sv(final float[] p0, final com.google.research.reflection.a.b p1);
    
    public abstract void Sw(final DataInputStream p0);
    
    public final a Sx() {
        return this.MA;
    }
}
