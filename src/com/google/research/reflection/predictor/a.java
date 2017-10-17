// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.predictor;

import java.util.List;
import java.util.Collections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.HashMap;

public class a
{
    protected int LA;
    protected int LB;
    protected HashMap LC;
    private c LD;
    private d LE;
    protected HashMap LF;
    protected HashMap Lw;
    protected b Lx;
    protected HashMap Ly;
    private float[] Lz;
    
    public a() {
        this.LC = new HashMap();
        this.Ly = new HashMap();
        this.Lw = new HashMap();
        this.LF = new HashMap();
        this.Lz = null;
        this.LA = 100;
    }
    
    public a(final b lx) {
        this.LC = new HashMap();
        this.Ly = new HashMap();
        this.Lw = new HashMap();
        this.LF = new HashMap();
        this.Lz = null;
        this.LA = 100;
        (this.Lx = lx).TE(this);
    }
    
    private String Tr() {
        final long n = Long.MAX_VALUE;
        final Iterator<Map.Entry<K, Long>> iterator = this.LF.entrySet().iterator();
        Integer n2 = null;
        long longValue = n;
        while (iterator.hasNext()) {
            final Map.Entry<K, Long> entry = iterator.next();
            int n3;
            if (entry.getValue() >= longValue) {
                n3 = 1;
            }
            else {
                n3 = 0;
            }
            Integer n5;
            if (n3 == 0) {
                final Integer n4 = (Integer)entry.getKey();
                longValue = entry.getValue();
                n5 = n4;
            }
            else {
                n5 = n2;
            }
            n2 = n5;
        }
        for (final Map.Entry<K, Integer> entry2 : this.Ly.entrySet()) {
            if (entry2.getValue().equals(n2)) {
                return (String)entry2.getKey();
            }
        }
        return null;
    }
    
    private void Tt(final String s, final String s2) {
        if (!this.Ly.isEmpty()) {
            final Integer n = this.Ly.remove(s);
            if (n != null) {
                this.Ly.put(s2, n);
            }
            this.Lx.TB(s, s2);
        }
    }
    
    private void Tz(final String s) {
        if (this.Ly.isEmpty()) {
            return;
        }
        final int n = this.Ly.size() - 1;
        final Integer value = this.Ly.remove(s);
        if (!this.Ly.isEmpty()) {
            if (value == null) {
                this.Lx.TF(null, null, s);
                if (this.LD != null) {
                    this.LD.TL(value, n, s);
                }
            }
            else {
                this.LB -= (int)this.LC.remove(value);
                this.Lw.remove(value);
                this.LF.remove(value);
                if (n > value) {
                    for (final Map.Entry<K, Integer> entry : this.Ly.entrySet()) {
                        if (entry.getValue() == n) {
                            entry.setValue(value);
                            break;
                        }
                    }
                    this.LC.put(value, (int)this.LC.remove(n));
                    this.Lw.put(value, (long)this.Lw.remove(n));
                    this.LF.put(value, (long)this.LF.remove(n));
                }
                this.Lx.TF(value, n, s);
                if (this.LD != null) {
                    this.LD.TL(value, n, s);
                }
            }
            return;
        }
        throw new PredictorWrapper$PredictorInvalidException("Predictor becomes invalid");
    }
    
    public HashMap TA() {
        return this.Ly;
    }
    
    public d Tq() {
        return this.LE;
    }
    
    public e Ts(final com.google.research.reflection.a.b b) {
        if (this.Lz == null || this.Ly.size() > this.Lz.length) {
            this.Lz = new float[this.Ly.size()];
        }
        if (this.Lz.length > 0) {
            Arrays.fill(this.Lz, 0.0f);
        }
        final e ti = this.Lx.TI(this.Lz, b);
        final ArrayList<Object> list = new ArrayList<Object>(this.Ly.size());
        final float[] tv = ti.TV();
        for (final Map.Entry<String, V> entry : this.Ly.entrySet()) {
            list.add(new f(entry.getKey(), tv[(int)entry.getValue()]));
        }
        Collections.sort(list, Collections.reverseOrder());
        ti.TX(list);
        return ti;
    }
    
    public e Tu(final com.google.research.reflection.a.b b) {
        if (!this.Ly.containsKey(b.getId()) && this.TA().size() == this.Tx()) {
            final String tr = this.Tr();
            if (tr != null) {
                try {
                    this.Tz(tr);
                }
                catch (PredictorWrapper$PredictorInvalidException ex) {}
            }
        }
        final e td = this.Lx.TD(b);
        final int tv = this.Tv(b);
        Integer value = this.LC.get(tv);
        if (value == null) {
            value = 0;
        }
        this.LC.put(tv, value + 1);
        ++this.LB;
        this.LF.put(tv, b.ax());
        return td;
    }
    
    public int Tv(final com.google.research.reflection.a.b b) {
        final String id = b.getId();
        final long longValue = b.ax();
        Integer value = this.Ly.get(id);
        if (value == null) {
            value = this.Ly.size();
            this.Ly.put(id, value);
            this.Lw.put(value, longValue);
        }
        return value;
    }
    
    public void Tw(final d le) {
        this.LE = le;
    }
    
    public int Tx() {
        return this.LA;
    }
    
    public void Ty(final String s, final String s2, final Map map) {
        int n = 0;
        final ArrayList<String> list = new ArrayList<String>();
        for (final String s3 : this.Ly.keySet()) {
            if (s3.startsWith(s)) {
                list.add(s3);
            }
        }
        for (final String s4 : list) {
            while (this.Ly.containsKey(new StringBuilder(String.valueOf(s2).length() + 11).append(s2).append(n).toString())) {
                ++n;
            }
            final String string = new StringBuilder(String.valueOf(s2).length() + 11).append(s2).append(n).toString();
            map.put(s4, string);
            this.Tt(s4, string);
        }
    }
}
