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
import java.util.HashMap;
import java.util.ArrayList;
import com.google.research.reflection.a.b;
import com.google.research.reflection.common.a;

public class k extends d
{
    public k() {
        this.Mi = 5;
    }
    
    public k(final int n) {
        super(n);
        this.Mi = 5;
    }
    
    protected ArrayList UN(final a a, final com.google.research.reflection.a.b b, final long n, final long n2, final int n3) {
        final ArrayList list = new ArrayList();
        final HashMap<Object, com.google.research.reflection.common.d> hashMap = new HashMap<Object, com.google.research.reflection.common.d>();
        final List up = com.google.research.reflection.common.b.Up(b, "app_usage");
        Collections.sort((List<Object>)up, new h(this));
        for (final com.google.research.reflection.a.a a2 : up) {
            int n4;
            if (b.ax() - a2.au() > n) {
                n4 = 1;
            }
            else {
                n4 = 0;
            }
            if (n4 == 0) {
                final int uo = this.UO(a2.getId(), b.ax());
                com.google.research.reflection.common.d d = hashMap.get(uo);
                if (d == null) {
                    if (hashMap.size() >= n3) {
                        break;
                    }
                    d = new com.google.research.reflection.common.d(uo);
                    hashMap.put(uo, d);
                }
                ++d.Mc;
            }
        }
        list.addAll(hashMap.values());
        return list;
    }
    
    public k clone() {
        final k k = new k(this.Mk);
        for (final Map.Entry<String, V> entry : this.Ml.entrySet()) {
            k.Ml.put(entry.getKey(), entry.getValue());
        }
        for (final Map.Entry<Integer, V> entry2 : this.Mj.entrySet()) {
            k.Mj.put(entry2.getKey(), entry2.getValue());
        }
        k.Mh = Arrays.copyOf(this.Mh, this.Mh.length);
        k.UD(this.Md);
        return k;
    }
}
