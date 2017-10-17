// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.b;

import java.io.DataOutputStream;
import java.io.DataInputStream;
import java.util.List;
import java.util.Arrays;
import java.util.Collection;
import com.google.research.reflection.common.UncertaintyException;
import com.google.research.reflection.common.e;
import com.google.research.reflection.common.c;
import java.util.ArrayList;
import com.google.research.reflection.common.a;
import java.util.Iterator;
import java.util.Map;
import java.util.HashMap;

public class d extends b
{
    protected long Na;
    protected boolean[] Nb;
    protected int Nc;
    protected HashMap Nd;
    protected int Ne;
    protected HashMap Nf;
    protected long Ng;
    
    public d() {
        this.Nf = new HashMap();
        this.Nd = new HashMap();
        this.Ne = 200;
        this.Na = 600000L;
        this.Ng = 0L;
        this.Nc = 2;
        this.Nb = new boolean[this.Ne];
    }
    
    public d(final int ne) {
        this.Nf = new HashMap();
        this.Nd = new HashMap();
        this.Ne = 200;
        this.Na = 600000L;
        this.Ng = 0L;
        this.Nc = 2;
        this.Ne = ne;
        this.Nb = new boolean[this.Ne];
    }
    
    public d(final int ne, final long na, final long ng, final int nc) {
        this.Nf = new HashMap();
        this.Nd = new HashMap();
        this.Ne = 200;
        this.Na = 600000L;
        this.Ng = 0L;
        this.Nc = 2;
        this.Nc = nc;
        this.Na = na;
        this.Ng = ng;
        this.Ne = ne;
        this.Nb = new boolean[this.Ne];
    }
    
    private String TC() {
        final long n = Long.MAX_VALUE;
        final Iterator<Map.Entry<K, Object>> iterator = this.Nf.entrySet().iterator();
        long n2 = n;
        String s = null;
        while (iterator.hasNext()) {
            final Map.Entry<K, Object> entry = iterator.next();
            final long longValue = this.Nd.get(entry.getValue());
            int n3;
            if (longValue >= n2) {
                n3 = 1;
            }
            else {
                n3 = 0;
            }
            String s2;
            long n4;
            if (n3 == 0) {
                s2 = (String)entry.getKey();
                n4 = longValue;
            }
            else {
                s2 = s;
                n4 = n2;
            }
            n2 = n4;
            s = s2;
        }
        return s;
    }
    
    protected ArrayList TA(final a a, final com.google.research.reflection.a.b b, final long n, final long n2, final int n3) {
        final ArrayList list = new ArrayList();
        final HashMap<Object, c> hashMap = new HashMap<Object, c>();
    Label_0037:
        for (int i = a.SV() - 1; i >= 0; --i) {
            Object o = a.ST(i);
            Label_0171: {
                if (((com.google.research.reflection.a.b)o).M() != null) {
                    break Label_0171;
                }
                com.google.research.reflection.a.b b2;
                long tn;
                long n4;
                int n5;
                int n6;
                int tb;
                Label_0129_Outer:Label_0153_Outer:Label_0158_Outer:
                while (true) {
                    b2 = (com.google.research.reflection.a.b)o;
                Label_0158:
                    while (true) {
                    Label_0274:
                        while (true) {
                        Label_0262:
                            while (true) {
                            Label_0250:
                                while (true) {
                                    try {
                                        tn = e.Tn(b2, b);
                                        n4 = tn - ((com.google.research.reflection.a.b)o).K();
                                        if (n4 >= n) {
                                            break Label_0250;
                                        }
                                        n5 = 1;
                                        if (n5 == 0) {
                                            break Label_0037;
                                        }
                                        if (n4 >= n2) {
                                            n6 = 1;
                                            if (n6 != 0) {
                                                break Label_0274;
                                            }
                                            break;
                                        }
                                        break Label_0262;
                                        // iftrue(Label_0080:, o.M().size() == 0 || (String)o.M().get(0).equals((Object)"GEL"))
                                        continue Label_0158;
                                    }
                                    catch (UncertaintyException ex) {
                                        tn = Long.MAX_VALUE;
                                        continue Label_0129_Outer;
                                    }
                                    break;
                                }
                                n5 = 0;
                                continue Label_0153_Outer;
                            }
                            n6 = 0;
                            continue Label_0158_Outer;
                        }
                        tb = this.TB(((com.google.research.reflection.a.b)o).getId(), b.F());
                        o = hashMap.get(tb);
                        if (o == null) {
                            if (hashMap.size() >= n3) {
                                break Label_0037;
                            }
                            o = new c(tb);
                            hashMap.put(tb, (c)o);
                        }
                        ++((c)o).MW;
                        continue Label_0158;
                    }
                }
            }
        }
        list.addAll(hashMap.values());
        return list;
    }
    
    protected int TB(final String s, final long n) {
        final int n2 = 1;
        int i = 0;
        Integer value = this.Nf.get(s);
        if (value == null) {
            if (this.Nf.size() != this.Ne) {
                while (i < this.Nb.length) {
                    if (!this.Nb[i]) {
                        value = i;
                        this.Nb[i] = (n2 != 0);
                        break;
                    }
                    ++i;
                }
            }
            else {
                final String tc = this.TC();
                value = (Integer)this.Nf.get(tc);
                final String[] array = new String[n2];
                array[0] = tc;
                this.Tu(Arrays.asList(array));
                this.Nb[value] = (n2 != 0);
            }
            this.Nf.put(s, value);
        }
        this.Nd.put(value, n);
        return value;
    }
    
    public int Ts() {
        return this.Ne;
    }
    
    public com.google.research.reflection.layers.b Tt(final a a, final com.google.research.reflection.a.b b) {
        final ArrayList ta = this.TA(a, b, this.Na, this.Ng, this.Nc);
        final com.google.research.reflection.layers.b b2 = new com.google.research.reflection.layers.b(1, this.Ne);
        for (final c c : ta) {
            if (c.MW > 0.0f) {
                if (c.MV >= this.Ne) {
                    throw new RuntimeException(new StringBuilder(26).append("invalid index: ").append(c.MV).toString());
                }
                b2.Nl[c.MV] = 1.0;
            }
        }
        return b2;
    }
    
    public void Tu(final List list) {
        if (!list.isEmpty()) {
            final Integer n = this.Nf.remove(list.get(0));
            if (n != null) {
                this.Nd.remove(n);
                this.Nb[n] = false;
                this.Tx(n);
            }
        }
    }
    
    public void Tv(final DataInputStream dataInputStream) {
        this.Ne = dataInputStream.readInt();
        this.Nc = dataInputStream.readInt();
        this.Na = dataInputStream.readLong();
        this.Ng = dataInputStream.readLong();
        this.Nf = com.google.research.reflection.common.d.Tj(dataInputStream, String.class, Integer.class);
        this.Nd = com.google.research.reflection.common.d.Tj(dataInputStream, Integer.class, Long.class);
        this.Nb = new boolean[this.Ne];
        final Iterator<Integer> iterator = this.Nf.values().iterator();
        while (iterator.hasNext()) {
            this.Nb[iterator.next()] = true;
        }
    }
    
    public void Tw(final DataOutputStream dataOutputStream) {
        dataOutputStream.writeInt(this.Ne);
        dataOutputStream.writeInt(this.Nc);
        dataOutputStream.writeLong(this.Na);
        dataOutputStream.writeLong(this.Ng);
        com.google.research.reflection.common.d.Ti(dataOutputStream, this.Nf);
        com.google.research.reflection.common.d.Ti(dataOutputStream, this.Nd);
    }
    
    public d clone() {
        final d d = new d(this.Ne, this.Na, this.Ng, this.Nc);
        for (final Map.Entry<String, V> entry : this.Nf.entrySet()) {
            d.Nf.put(entry.getKey(), entry.getValue());
        }
        for (final Map.Entry<Integer, V> entry2 : this.Nd.entrySet()) {
            d.Nd.put(entry2.getKey(), entry2.getValue());
        }
        d.Nb = Arrays.copyOf(this.Nb, this.Nb.length);
        d.Tq(this.MX);
        return d;
    }
}
