// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.b;

import com.google.android.apps.nexuslauncher.reflection.d.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.io.IOException;
import android.util.Log;
import com.google.protobuf.nano.c;
import com.google.android.apps.nexuslauncher.reflection.d.e;

public class b implements com.google.research.reflection.a.b
{
    private e I;
    
    public b() {
        this.I = new e();
    }
    
    public b(final e i) {
        this.I = i;
    }
    
    public Long F() {
        return this.I.ah;
    }
    
    public String G() {
        return this.I.an;
    }
    
    public com.google.research.reflection.a.b H(final String am) {
        this.I.am = am;
        return this;
    }
    
    public com.google.research.reflection.a.b I(final byte[] array, final int n, final int n2) {
        try {
            final c wc = c.WC(array, 0, n2);
            try {
                return new b(e.af(wc));
            }
            catch (IOException ex) {
                Log.e("Reflection", "deserialize event failed!");
                return null;
            }
        }
        catch (IOException ex2) {}
    }
    
    public Long J() {
        return this.I.ak;
    }
    
    public Long K() {
        return this.I.duration;
    }
    
    public Long L() {
        return this.I.al;
    }
    
    public List M() {
        return Arrays.asList(this.I.ao);
    }
    
    public List N() {
        final ArrayList<a> list = new ArrayList<a>(this.I.au.length);
        final i[] au = this.I.au;
        for (int i = 0; i < au.length; ++i) {
            list.add(new a(au[i]));
        }
        return list;
    }
    
    public Long O() {
        return this.I.aj;
    }
    
    public String P() {
        return this.I.ai;
    }
    
    public String Q() {
        return this.I.ap;
    }
    
    public byte[] R() {
        if (this.I == null) {
            return null;
        }
        return com.google.protobuf.nano.a.toByteArray(this.I);
    }
    
    public com.google.research.reflection.a.b S(final List list) {
        if (list == null) {
            return this;
        }
        this.I.au = new i[list.size()];
        for (int i = 0; i < list.size(); ++i) {
            if (!(list.get(i) instanceof a)) {
                throw new RuntimeException("Passed in type is unexpected!");
            }
            this.I.au[i] = list.get(i).getInstance();
        }
        return this;
    }
    
    public boolean equals(final Object o) {
        return (o == null && this.I == null) || (o != null && this.I != null && o instanceof b && this.I.toString().equals(((b)o).getInstance().toString()));
    }
    
    public String getId() {
        return this.I.am;
    }
    
    public e getInstance() {
        return this.I;
    }
}
