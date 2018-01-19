// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import com.google.android.apps.nexuslauncher.reflection.f.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.io.IOException;
import android.util.Log;
import com.google.protobuf.nano.c;
import com.google.android.apps.nexuslauncher.reflection.f.e;
import com.google.research.reflection.a.a;

public class b implements a
{
    private e L;
    
    public b() {
        this.L = new e();
    }
    
    public b(final e l) {
        this.L = l;
    }
    
    public Long aa() {
        return this.L.aq;
    }
    
    public a ab(final String at) {
        this.L.at = at;
        return this;
    }
    
    public a ac(final byte[] array, final int n, final int n2) {
        try {
            final c fy = c.FY(array, 0, n2);
            try {
                return new b(e.aD(fy));
            }
            catch (IOException ex) {
                Log.e("Reflection", "deserialize event failed!");
                return null;
            }
        }
        catch (IOException ex2) {}
    }
    
    public Long ad() {
        return this.L.ay;
    }
    
    public String ae() {
        return this.L.ar;
    }
    
    public Long af() {
        return this.L.aB;
    }
    
    public Long ag() {
        return this.L.az;
    }
    
    public List ah() {
        return Arrays.asList(this.L.au);
    }
    
    public List ai() {
        final ArrayList<com.google.android.apps.nexuslauncher.reflection.d.a> list = new ArrayList<com.google.android.apps.nexuslauncher.reflection.d.a>(this.L.av.length);
        final i[] av = this.L.av;
        for (int i = 0; i < av.length; ++i) {
            list.add(new com.google.android.apps.nexuslauncher.reflection.d.a(av[i]));
        }
        return list;
    }
    
    public Long aj() {
        return this.L.ax;
    }
    
    public String ak() {
        return this.L.aw;
    }
    
    public String al() {
        return this.L.as;
    }
    
    public byte[] am() {
        if (this.L == null) {
            return null;
        }
        return com.google.protobuf.nano.a.toByteArray(this.L);
    }
    
    public a an(final List list) {
        if (list == null) {
            return this;
        }
        this.L.av = new i[list.size()];
        for (int i = 0; i < list.size(); ++i) {
            if (!(list.get(i) instanceof com.google.android.apps.nexuslauncher.reflection.d.a)) {
                throw new RuntimeException("Passed in type is unexpected!");
            }
            this.L.av[i] = list.get(i).getInstance();
        }
        return this;
    }
    
    public boolean equals(final Object o) {
        return (o == null && this.L == null) || (o != null && this.L != null && o instanceof b && this.L.toString().equals(((b)o).getInstance().toString()));
    }
    
    public String getId() {
        return this.L.at;
    }
    
    public e getInstance() {
        return this.L;
    }
}
