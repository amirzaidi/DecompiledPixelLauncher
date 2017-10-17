// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.b;

import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;
import com.google.android.apps.nexuslauncher.reflection.d.i;

public class a implements com.google.research.reflection.a.a
{
    private i H;
    
    public a() {
        this.H = new i();
    }
    
    public a(final i h) {
        this.H = h;
    }
    
    public List B() {
        final ArrayList<Double> list = new ArrayList<Double>();
        final double[] ag = this.H.aG;
        for (int i = 0; i < ag.length; ++i) {
            list.add(ag[i]);
        }
        return list;
    }
    
    public List C() {
        return Arrays.asList(this.H.aF);
    }
    
    public Long D() {
        return this.H.aD;
    }
    
    public String E() {
        return this.H.aC;
    }
    
    public String getId() {
        return this.H.aE;
    }
    
    public i getInstance() {
        return this.H;
    }
}
