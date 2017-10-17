// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.b;

import java.util.Arrays;
import java.util.Collection;
import com.google.research.reflection.common.UncertaintyException;
import com.google.research.reflection.common.e;
import java.io.DataOutputStream;
import com.google.research.reflection.common.c;
import java.io.DataInputStream;
import java.util.List;
import java.util.ArrayList;
import com.google.research.reflection.common.a;
import java.util.Iterator;
import java.util.Map;
import java.util.HashMap;

public class d extends b
{
    protected long Mg;
    protected boolean[] Mh;
    protected int Mi;
    protected HashMap Mj;
    protected int Mk;
    protected HashMap Ml;
    protected long Mm;
    
    public d() {
        this.Ml = new HashMap();
        this.Mj = new HashMap();
        this.Mk = 200;
        this.Mg = 600000L;
        this.Mm = 0L;
        this.Mi = 2;
        this.Mh = new boolean[this.Mk];
    }
    
    public d(final int mk) {
        this.Ml = new HashMap();
        this.Mj = new HashMap();
        this.Mk = 200;
        this.Mg = 600000L;
        this.Mm = 0L;
        this.Mi = 2;
        this.Mk = mk;
        this.Mh = new boolean[this.Mk];
    }
    
    public d(final int mk, final long mg, final long mm, final int mi) {
        this.Ml = new HashMap();
        this.Mj = new HashMap();
        this.Mk = 200;
        this.Mg = 600000L;
        this.Mm = 0L;
        this.Mi = 2;
        this.Mi = mi;
        this.Mg = mg;
        this.Mm = mm;
        this.Mk = mk;
        this.Mh = new boolean[this.Mk];
    }
    
    private String UP() {
        final long n = Long.MAX_VALUE;
        final Iterator<Map.Entry<K, Object>> iterator = this.Ml.entrySet().iterator();
        long n2 = n;
        String s = null;
        while (iterator.hasNext()) {
            final Map.Entry<K, Object> entry = iterator.next();
            final long longValue = this.Mj.get(entry.getValue());
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
    
    public int UF() {
        return this.Mk;
    }
    
    public com.google.research.reflection.layers.b UG(final a a, final com.google.research.reflection.a.b b) {
        final ArrayList un = this.UN(a, b, this.Mg, this.Mm, this.Mi);
        final com.google.research.reflection.layers.b b2 = new com.google.research.reflection.layers.b(1, this.Mk);
        for (final com.google.research.reflection.common.d d : un) {
            if (d.Mc > 0.0f) {
                if (d.Mb >= this.Mk) {
                    throw new RuntimeException(new StringBuilder(26).append("invalid index: ").append(d.Mb).toString());
                }
                b2.Mr[d.Mb] = 1.0;
            }
        }
        return b2;
    }
    
    public void UH(final List list) {
        if (!list.isEmpty()) {
            final Integer n = this.Ml.remove(list.get(0));
            if (n != null) {
                this.Mj.remove(n);
                this.Mh[n] = false;
                this.UK(n);
            }
        }
    }
    
    public void UI(final DataInputStream dataInputStream) {
        this.Mk = dataInputStream.readInt();
        this.Mi = dataInputStream.readInt();
        this.Mg = dataInputStream.readLong();
        this.Mm = dataInputStream.readLong();
        this.Ml = c.Uv(dataInputStream, String.class, Integer.class);
        this.Mj = c.Uv(dataInputStream, Integer.class, Long.class);
        this.Mh = new boolean[this.Mk];
        final Iterator<Integer> iterator = this.Ml.values().iterator();
        while (iterator.hasNext()) {
            this.Mh[iterator.next()] = true;
        }
    }
    
    public void UJ(final DataOutputStream dataOutputStream) {
        dataOutputStream.writeInt(this.Mk);
        dataOutputStream.writeInt(this.Mi);
        dataOutputStream.writeLong(this.Mg);
        dataOutputStream.writeLong(this.Mm);
        c.Uu(dataOutputStream, this.Ml);
        c.Uu(dataOutputStream, this.Mj);
    }
    
    protected ArrayList UN(final a a, final com.google.research.reflection.a.b b, final long n, final long n2, final int n3) {
        final ArrayList list = new ArrayList();
        final HashMap<Object, com.google.research.reflection.common.d> hashMap = new HashMap<Object, com.google.research.reflection.common.d>();
    Label_0037:
        for (int i = a.Ui() - 1; i >= 0; --i) {
            Object o = a.Ug(i);
            Label_0171: {
                if (((com.google.research.reflection.a.b)o).aD() != null) {
                    break Label_0171;
                }
                com.google.research.reflection.a.b b2;
                long ua;
                long n4;
                int n5;
                int n6;
                int uo;
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
                                        ua = e.UA(b2, b);
                                        n4 = ua - ((com.google.research.reflection.a.b)o).aB();
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
                                        // iftrue(Label_0080:, o.aD().size() == 0 || (String)o.aD().get(0).equals((Object)"GEL"))
                                        continue Label_0158;
                                    }
                                    catch (UncertaintyException ex) {
                                        ua = Long.MAX_VALUE;
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
                        uo = this.UO(((com.google.research.reflection.a.b)o).getId(), b.ax());
                        o = hashMap.get(uo);
                        if (o == null) {
                            if (hashMap.size() >= n3) {
                                break Label_0037;
                            }
                            o = new com.google.research.reflection.common.d(uo);
                            hashMap.put(uo, (com.google.research.reflection.common.d)o);
                        }
                        ++((com.google.research.reflection.common.d)o).Mc;
                        continue Label_0158;
                    }
                }
            }
        }
        list.addAll(hashMap.values());
        return list;
    }
    
    protected int UO(final String s, final long n) {
        final int n2 = 1;
        int i = 0;
        Integer value = this.Ml.get(s);
        if (value == null) {
            if (this.Ml.size() != this.Mk) {
                while (i < this.Mh.length) {
                    if (!this.Mh[i]) {
                        value = i;
                        this.Mh[i] = (n2 != 0);
                        break;
                    }
                    ++i;
                }
            }
            else {
                final String up = this.UP();
                value = (Integer)this.Ml.get(up);
                final String[] array = new String[n2];
                array[0] = up;
                this.UH(Arrays.asList(array));
                this.Mh[value] = (n2 != 0);
            }
            this.Ml.put(s, value);
        }
        this.Mj.put(value, n);
        return value;
    }
    
    public d clone() {
        final d d = new d(this.Mk, this.Mg, this.Mm, this.Mi);
        for (final Map.Entry<String, V> entry : this.Ml.entrySet()) {
            d.Ml.put(entry.getKey(), entry.getValue());
        }
        for (final Map.Entry<Integer, V> entry2 : this.Mj.entrySet()) {
            d.Mj.put(entry2.getKey(), entry2.getValue());
        }
        d.Mh = Arrays.copyOf(this.Mh, this.Mh.length);
        d.UD(this.Md);
        return d;
    }
}
