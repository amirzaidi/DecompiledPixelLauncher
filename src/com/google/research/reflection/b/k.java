// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.b;

import java.util.Arrays;
import java.util.Map;
import java.util.Iterator;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Collections;
import com.google.research.reflection.common.c;
import java.util.HashMap;
import java.util.ArrayList;
import com.google.research.reflection.a.b;
import com.google.research.reflection.common.a;

public class k extends d
{
    public k() {
        this.Nc = 5;
    }
    
    public k(final int n) {
        super(n);
        this.Nc = 5;
    }
    
    protected ArrayList TA(final a a, final com.google.research.reflection.a.b b, final long n, final long n2, final int n3) {
        final ArrayList list = new ArrayList();
        final HashMap<Object, c> hashMap = new HashMap<Object, c>();
        final List tc = com.google.research.reflection.common.b.Tc(b, "app_usage");
        Collections.sort((List<Object>)tc, new h(this));
        for (final com.google.research.reflection.a.a a2 : tc) {
            int n4;
            if (b.F() - a2.D() > n) {
                n4 = 1;
            }
            else {
                n4 = 0;
            }
            if (n4 == 0) {
                final int tb = this.TB(a2.getId(), b.F());
                c c = hashMap.get(tb);
                if (c == null) {
                    if (hashMap.size() >= n3) {
                        break;
                    }
                    c = new c(tb);
                    hashMap.put(tb, c);
                }
                ++c.MW;
            }
        }
        list.addAll(hashMap.values());
        return list;
    }
    
    public k clone() {
        final k k = new k(this.Ne);
        for (final Map.Entry<String, V> entry : this.Nf.entrySet()) {
            k.Nf.put(entry.getKey(), entry.getValue());
        }
        for (final Map.Entry<Integer, V> entry2 : this.Nd.entrySet()) {
            k.Nd.put(entry2.getKey(), entry2.getValue());
        }
        k.Nb = Arrays.copyOf(this.Nb, this.Nb.length);
        k.Tq(this.MX);
        return k;
    }
}
