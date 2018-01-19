// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;
import com.google.android.apps.nexuslauncher.reflection.f.i;
import com.google.research.reflection.a.b;

public class a implements b
{
    private i K;
    
    public a() {
        this.K = new i();
    }
    
    public a(final i k) {
        this.K = k;
    }
    
    public List W() {
        final ArrayList<Double> list = new ArrayList<Double>();
        final double[] ao = this.K.aO;
        for (int i = 0; i < ao.length; ++i) {
            list.add(ao[i]);
        }
        return list;
    }
    
    public List X() {
        return Arrays.asList(this.K.aQ);
    }
    
    public Long Y() {
        return this.K.aN;
    }
    
    public String Z() {
        return this.K.aM;
    }
    
    public String getId() {
        return this.K.aP;
    }
    
    public i getInstance() {
        return this.K;
    }
}
