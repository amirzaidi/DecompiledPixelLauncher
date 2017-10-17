// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.b;

import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;
import com.google.android.apps.nexuslauncher.reflection.a.e;

public class a implements com.google.research.reflection.a.a
{
    private e bz;
    
    public a() {
        this.bz = new e();
    }
    
    public a(final e bz) {
        this.bz = bz;
    }
    
    public List ar() {
        final ArrayList<Double> list = new ArrayList<Double>();
        final double[] ai = this.bz.aI;
        for (int i = 0; i < ai.length; ++i) {
            list.add(ai[i]);
        }
        return list;
    }
    
    public e as() {
        return this.bz;
    }
    
    public List at() {
        return Arrays.asList(this.bz.aL);
    }
    
    public Long au() {
        return this.bz.aM;
    }
    
    public String av() {
        return this.bz.aN;
    }
    
    public String getId() {
        return this.bz.aJ;
    }
}
