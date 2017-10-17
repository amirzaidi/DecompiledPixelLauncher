// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.e;

import java.io.OutputStream;
import java.io.DataOutputStream;
import java.io.ByteArrayOutputStream;
import com.google.android.apps.nexuslauncher.reflection.d.c;
import java.io.InputStream;
import java.io.DataInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.Calendar;
import com.google.research.reflection.predictor.d;
import java.util.Map;
import com.google.research.reflection.predictor.b;

public class a extends com.google.research.reflection.predictor.a
{
    public a() {
    }
    
    public a(final b b) {
        super(b);
    }
    
    public static void ai(final com.google.android.apps.nexuslauncher.reflection.d.a a, final Map map, final d d) {
        map.clear();
        final com.google.android.apps.nexuslauncher.reflection.d.b[] s = a.S;
        for (int i = 0; i < s.length; ++i) {
            final com.google.android.apps.nexuslauncher.reflection.d.b b = s[i];
            final a a2 = new a();
            a2.Sj(d);
            a2.ak(b);
            map.put(b.U, a2);
        }
    }
    
    public static com.google.android.apps.nexuslauncher.reflection.d.a aj(final Map map) {
        final com.google.android.apps.nexuslauncher.reflection.d.a a = new com.google.android.apps.nexuslauncher.reflection.d.a();
        a.Q = Calendar.getInstance().getTimeInMillis();
        a.version = -1;
        a.R = "";
        a.S = new com.google.android.apps.nexuslauncher.reflection.d.b[map.size()];
        final Iterator<Map.Entry<K, a>> iterator = (Iterator<Map.Entry<K, a>>)map.entrySet().iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final Map.Entry<K, a> entry = iterator.next();
            final com.google.android.apps.nexuslauncher.reflection.d.b al = entry.getValue().al();
            al.U = (String)entry.getKey();
            final com.google.android.apps.nexuslauncher.reflection.d.b[] s = a.S;
            final int n2 = n + 1;
            s[n] = al;
            n = n2;
        }
        return a;
    }
    
    public void ak(final com.google.android.apps.nexuslauncher.reflection.d.b b) {
        int i = 0;
        this.Mv = b.ac;
        this.Mu = b.Y;
        this.Mr = b.Sp(b.aa);
        if (this.Mr == null) {
            throw new IOException("Cannot find predictor with " + b.aa);
        }
        this.Mr.Sr(this);
        final DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(b.Z));
        this.Mr.Sw(dataInputStream);
        dataInputStream.close();
        this.Ms.clear();
        final c[] ab = b.ab;
        for (int length = ab.length, j = 0; j < length; ++j) {
            final c c = ab[j];
            this.Ms.put(c.name, c.ae);
        }
        this.Mw.clear();
        final com.google.android.apps.nexuslauncher.reflection.d.d[] v = b.V;
        for (int length2 = v.length, k = 0; k < length2; ++k) {
            final com.google.android.apps.nexuslauncher.reflection.d.d d = v[k];
            this.Mw.put(d.key, (int)d.ag);
        }
        this.Mq.clear();
        final com.google.android.apps.nexuslauncher.reflection.d.d[] x = b.X;
        for (int length3 = x.length, l = 0; l < length3; ++l) {
            final com.google.android.apps.nexuslauncher.reflection.d.d d2 = x[l];
            this.Mq.put(d2.key, d2.ag);
        }
        this.Mz.clear();
        for (com.google.android.apps.nexuslauncher.reflection.d.d[] w = b.W; i < w.length; ++i) {
            final com.google.android.apps.nexuslauncher.reflection.d.d d3 = w[i];
            this.Mz.put(d3.key, d3.ag);
        }
    }
    
    public com.google.android.apps.nexuslauncher.reflection.d.b al() {
        int n = 0;
        final com.google.android.apps.nexuslauncher.reflection.d.b b = new com.google.android.apps.nexuslauncher.reflection.d.b();
        b.ac = this.Mv;
        b.Y = this.Mu;
        b.aa = com.google.research.reflection.predictor.b.St(this.Mr);
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        final DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        this.Mr.Su(dataOutputStream);
        dataOutputStream.flush();
        b.Z = byteArrayOutputStream.toByteArray();
        dataOutputStream.close();
        b.ab = new c[this.Ms.size()];
        final Iterator iterator = this.Ms.entrySet().iterator();
        int n2 = 0;
        while (iterator.hasNext()) {
            final Map.Entry<String, V> entry = iterator.next();
            final c c = new c();
            c.name = entry.getKey();
            c.ae = (int)entry.getValue();
            final c[] ab = b.ab;
            final int n3 = n2 + 1;
            ab[n2] = c;
            n2 = n3;
        }
        b.V = new com.google.android.apps.nexuslauncher.reflection.d.d[this.Mw.size()];
        final Iterator iterator2 = this.Mw.entrySet().iterator();
        int n4 = 0;
        while (iterator2.hasNext()) {
            final Map.Entry<Integer, V> entry2 = iterator2.next();
            final com.google.android.apps.nexuslauncher.reflection.d.d d = new com.google.android.apps.nexuslauncher.reflection.d.d();
            d.key = entry2.getKey();
            d.ag = (int)entry2.getValue();
            final com.google.android.apps.nexuslauncher.reflection.d.d[] v = b.V;
            final int n5 = n4 + 1;
            v[n4] = d;
            n4 = n5;
        }
        b.X = new com.google.android.apps.nexuslauncher.reflection.d.d[this.Mq.size()];
        final Iterator iterator3 = this.Mq.entrySet().iterator();
        int n6 = 0;
        while (iterator3.hasNext()) {
            final Map.Entry<Integer, V> entry3 = iterator3.next();
            final com.google.android.apps.nexuslauncher.reflection.d.d d2 = new com.google.android.apps.nexuslauncher.reflection.d.d();
            d2.key = entry3.getKey();
            d2.ag = (long)entry3.getValue();
            final com.google.android.apps.nexuslauncher.reflection.d.d[] x = b.X;
            final int n7 = n6 + 1;
            x[n6] = d2;
            n6 = n7;
        }
        b.W = new com.google.android.apps.nexuslauncher.reflection.d.d[this.Mz.size()];
        for (final Map.Entry<Integer, V> entry4 : this.Mz.entrySet()) {
            final com.google.android.apps.nexuslauncher.reflection.d.d d3 = new com.google.android.apps.nexuslauncher.reflection.d.d();
            d3.key = entry4.getKey();
            d3.ag = (long)entry4.getValue();
            final com.google.android.apps.nexuslauncher.reflection.d.d[] w = b.W;
            final int n8 = n + 1;
            w[n] = d3;
            n = n8;
        }
        return b;
    }
}
