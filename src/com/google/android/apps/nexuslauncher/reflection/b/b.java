// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.b;

import java.io.IOException;
import android.util.Log;
import com.google.protobuf.nano.c;
import com.google.android.apps.nexuslauncher.reflection.a.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import com.google.android.apps.nexuslauncher.reflection.a.a;

public class b implements com.google.research.reflection.a.b
{
    private a bA;
    
    public b() {
        this.bA = new a();
    }
    
    public b(final a ba) {
        this.bA = ba;
    }
    
    public Long aA() {
        return this.bA.am;
    }
    
    public Long aB() {
        return this.bA.duration;
    }
    
    public Long aC() {
        return this.bA.ap;
    }
    
    public List aD() {
        return Arrays.asList(this.bA.aq);
    }
    
    public List aE() {
        final ArrayList<com.google.android.apps.nexuslauncher.reflection.b.a> list = new ArrayList<com.google.android.apps.nexuslauncher.reflection.b.a>(this.bA.av.length);
        final e[] av = this.bA.av;
        for (int i = 0; i < av.length; ++i) {
            list.add(new com.google.android.apps.nexuslauncher.reflection.b.a(av[i]));
        }
        return list;
    }
    
    public Long aF() {
        return this.bA.ax;
    }
    
    public String aG() {
        return this.bA.ay;
    }
    
    public String aH() {
        return this.bA.az;
    }
    
    public byte[] aI() {
        if (this.bA == null) {
            return null;
        }
        return com.google.protobuf.nano.a.toByteArray(this.bA);
    }
    
    public com.google.research.reflection.a.b aJ(final String as) {
        this.bA.as = as;
        return this;
    }
    
    public com.google.research.reflection.a.b aK(final List list) {
        if (list == null) {
            return this;
        }
        this.bA.av = new e[list.size()];
        for (int i = 0; i < list.size(); ++i) {
            if (!(list.get(i) instanceof com.google.android.apps.nexuslauncher.reflection.b.a)) {
                throw new RuntimeException("Passed in type is unexpected!");
            }
            this.bA.av[i] = list.get(i).as();
        }
        return this;
    }
    
    public String aw() {
        return this.bA.an;
    }
    
    public Long ax() {
        return this.bA.aw;
    }
    
    public a ay() {
        return this.bA;
    }
    
    public com.google.research.reflection.a.b az(final byte[] array, final int n, final int n2) {
        try {
            final c sh = c.SH(array, 0, n2);
            try {
                return new b(a.an(sh));
            }
            catch (IOException ex) {
                Log.e("Reflection", "deserialize event failed!");
                return null;
            }
        }
        catch (IOException ex2) {}
    }
    
    public boolean equals(final Object o) {
        return (o == null && this.bA == null) || (o != null && this.bA != null && o instanceof b && this.bA.toString().equals(((b)o).ay().toString()));
    }
    
    public String getId() {
        return this.bA.as;
    }
}
