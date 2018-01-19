// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.b;

import java.io.OutputStream;
import java.io.DataOutputStream;
import java.io.ByteArrayOutputStream;
import com.google.android.apps.nexuslauncher.reflection.f.c;
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
    
    public static void s(final com.google.android.apps.nexuslauncher.reflection.f.a a, final Map map, final d d) {
        map.clear();
        final com.google.android.apps.nexuslauncher.reflection.f.b[] aa = a.aa;
        for (int i = 0; i < aa.length; ++i) {
            final com.google.android.apps.nexuslauncher.reflection.f.b b = aa[i];
            final a a2 = new a();
            a2.GN(d);
            a2.t(b);
            map.put(b.al, a2);
        }
    }
    
    public static com.google.android.apps.nexuslauncher.reflection.f.a u(final Map map) {
        final com.google.android.apps.nexuslauncher.reflection.f.a a = new com.google.android.apps.nexuslauncher.reflection.f.a();
        a.ab = Calendar.getInstance().getTimeInMillis();
        a.version = -1;
        a.ac = "";
        a.aa = new com.google.android.apps.nexuslauncher.reflection.f.b[map.size()];
        final Iterator<Map.Entry<K, a>> iterator = (Iterator<Map.Entry<K, a>>)map.entrySet().iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final Map.Entry<K, a> entry = iterator.next();
            final com.google.android.apps.nexuslauncher.reflection.f.b v = entry.getValue().v();
            v.al = (String)entry.getKey();
            final com.google.android.apps.nexuslauncher.reflection.f.b[] aa = a.aa;
            final int n2 = n + 1;
            aa[n] = v;
            n = n2;
        }
        return a;
    }
    
    public void t(final com.google.android.apps.nexuslauncher.reflection.f.b b) {
        int i = 0;
        this.ON = b.ad;
        this.OM = b.ae;
        this.OJ = b.GT(b.af);
        if (this.OJ == null) {
            throw new IOException("Cannot find predictor with " + b.af);
        }
        this.OJ.GV(this);
        final DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(b.ag));
        this.OJ.Ha(dataInputStream);
        dataInputStream.close();
        this.OK.clear();
        final c[] ah = b.ah;
        for (int length = ah.length, j = 0; j < length; ++j) {
            final c c = ah[j];
            this.OK.put(c.name, c.id);
        }
        this.OO.clear();
        final com.google.android.apps.nexuslauncher.reflection.f.d[] ai = b.ai;
        for (int length2 = ai.length, k = 0; k < length2; ++k) {
            final com.google.android.apps.nexuslauncher.reflection.f.d d = ai[k];
            this.OO.put(d.key, (int)d.ao);
        }
        this.OI.clear();
        final com.google.android.apps.nexuslauncher.reflection.f.d[] aj = b.aj;
        for (int length3 = aj.length, l = 0; l < length3; ++l) {
            final com.google.android.apps.nexuslauncher.reflection.f.d d2 = aj[l];
            this.OI.put(d2.key, d2.ao);
        }
        this.OR.clear();
        for (com.google.android.apps.nexuslauncher.reflection.f.d[] ak = b.ak; i < ak.length; ++i) {
            final com.google.android.apps.nexuslauncher.reflection.f.d d3 = ak[i];
            this.OR.put(d3.key, d3.ao);
        }
    }
    
    public com.google.android.apps.nexuslauncher.reflection.f.b v() {
        int n = 0;
        final com.google.android.apps.nexuslauncher.reflection.f.b b = new com.google.android.apps.nexuslauncher.reflection.f.b();
        b.ad = this.ON;
        b.ae = this.OM;
        b.af = com.google.research.reflection.predictor.b.GX(this.OJ);
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        final DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        this.OJ.GY(dataOutputStream);
        dataOutputStream.flush();
        b.ag = byteArrayOutputStream.toByteArray();
        dataOutputStream.close();
        b.ah = new c[this.OK.size()];
        final Iterator iterator = this.OK.entrySet().iterator();
        int n2 = 0;
        while (iterator.hasNext()) {
            final Map.Entry<String, V> entry = iterator.next();
            final c c = new c();
            c.name = entry.getKey();
            c.id = (int)entry.getValue();
            final c[] ah = b.ah;
            final int n3 = n2 + 1;
            ah[n2] = c;
            n2 = n3;
        }
        b.ai = new com.google.android.apps.nexuslauncher.reflection.f.d[this.OO.size()];
        final Iterator iterator2 = this.OO.entrySet().iterator();
        int n4 = 0;
        while (iterator2.hasNext()) {
            final Map.Entry<Integer, V> entry2 = iterator2.next();
            final com.google.android.apps.nexuslauncher.reflection.f.d d = new com.google.android.apps.nexuslauncher.reflection.f.d();
            d.key = entry2.getKey();
            d.ao = (int)entry2.getValue();
            final com.google.android.apps.nexuslauncher.reflection.f.d[] ai = b.ai;
            final int n5 = n4 + 1;
            ai[n4] = d;
            n4 = n5;
        }
        b.aj = new com.google.android.apps.nexuslauncher.reflection.f.d[this.OI.size()];
        final Iterator iterator3 = this.OI.entrySet().iterator();
        int n6 = 0;
        while (iterator3.hasNext()) {
            final Map.Entry<Integer, V> entry3 = iterator3.next();
            final com.google.android.apps.nexuslauncher.reflection.f.d d2 = new com.google.android.apps.nexuslauncher.reflection.f.d();
            d2.key = entry3.getKey();
            d2.ao = (long)entry3.getValue();
            final com.google.android.apps.nexuslauncher.reflection.f.d[] aj = b.aj;
            final int n7 = n6 + 1;
            aj[n6] = d2;
            n6 = n7;
        }
        b.ak = new com.google.android.apps.nexuslauncher.reflection.f.d[this.OR.size()];
        for (final Map.Entry<Integer, V> entry4 : this.OR.entrySet()) {
            final com.google.android.apps.nexuslauncher.reflection.f.d d3 = new com.google.android.apps.nexuslauncher.reflection.f.d();
            d3.key = entry4.getKey();
            d3.ao = (long)entry4.getValue();
            final com.google.android.apps.nexuslauncher.reflection.f.d[] ak = b.ak;
            final int n8 = n + 1;
            ak[n] = d3;
            n = n8;
        }
        return b;
    }
}
