// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.e;

import java.io.OutputStream;
import java.io.DataOutputStream;
import java.io.ByteArrayOutputStream;
import com.google.android.apps.nexuslauncher.reflection.a.n;
import com.google.android.apps.nexuslauncher.reflection.a.m;
import java.io.InputStream;
import java.io.DataInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.Calendar;
import com.google.android.apps.nexuslauncher.reflection.a.l;
import com.google.research.reflection.predictor.d;
import java.util.Map;
import com.google.android.apps.nexuslauncher.reflection.a.k;
import com.google.research.reflection.predictor.b;

public class a extends com.google.research.reflection.predictor.a
{
    public a() {
    }
    
    public a(final b b) {
        super(b);
    }
    
    public static void bw(final k k, final Map map, final d d) {
        map.clear();
        final l[] bk = k.bk;
        for (int i = 0; i < bk.length; ++i) {
            final l l = bk[i];
            final a a = new a();
            a.Tw(d);
            a.by(l);
            map.put(l.bt, a);
        }
    }
    
    public static k bx(final Map map) {
        final k k = new k();
        k.bh = Calendar.getInstance().getTimeInMillis();
        k.bi = -1;
        k.bj = "";
        k.bk = new l[map.size()];
        final Iterator<Map.Entry<K, a>> iterator = (Iterator<Map.Entry<K, a>>)map.entrySet().iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final Map.Entry<K, a> entry = iterator.next();
            final l bz = entry.getValue().bz();
            bz.bt = (String)entry.getKey();
            final l[] bk = k.bk;
            final int n2 = n + 1;
            bk[n] = bz;
            n = n2;
        }
        return k;
    }
    
    public void by(final l l) {
        int i = 0;
        this.LB = l.bl;
        this.LA = l.bm;
        this.Lx = b.TC(l.bn);
        if (this.Lx == null) {
            throw new IOException("Cannot find predictor with " + l.bn);
        }
        this.Lx.TE(this);
        final DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(l.bo));
        this.Lx.TJ(dataInputStream);
        dataInputStream.close();
        this.Ly.clear();
        final m[] bp = l.bp;
        for (int length = bp.length, j = 0; j < length; ++j) {
            final m m = bp[j];
            this.Ly.put(m.name, m.bv);
        }
        this.LC.clear();
        final n[] bq = l.bq;
        for (int length2 = bq.length, k = 0; k < length2; ++k) {
            final n n = bq[k];
            this.LC.put(n.key, (int)n.bx);
        }
        this.Lw.clear();
        final n[] br = l.br;
        for (int length3 = br.length, n2 = 0; n2 < length3; ++n2) {
            final n n3 = br[n2];
            this.Lw.put(n3.key, n3.bx);
        }
        this.LF.clear();
        for (n[] bs = l.bs; i < bs.length; ++i) {
            final n n4 = bs[i];
            this.LF.put(n4.key, n4.bx);
        }
    }
    
    public l bz() {
        int n = 0;
        final l l = new l();
        l.bl = this.LB;
        l.bm = this.LA;
        l.bn = b.TG(this.Lx);
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        final DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        this.Lx.TH(dataOutputStream);
        dataOutputStream.flush();
        l.bo = byteArrayOutputStream.toByteArray();
        dataOutputStream.close();
        l.bp = new m[this.Ly.size()];
        final Iterator iterator = this.Ly.entrySet().iterator();
        int n2 = 0;
        while (iterator.hasNext()) {
            final Map.Entry<String, V> entry = iterator.next();
            final m m = new m();
            m.name = entry.getKey();
            m.bv = (int)entry.getValue();
            final m[] bp = l.bp;
            final int n3 = n2 + 1;
            bp[n2] = m;
            n2 = n3;
        }
        l.bq = new n[this.LC.size()];
        final Iterator iterator2 = this.LC.entrySet().iterator();
        int n4 = 0;
        while (iterator2.hasNext()) {
            final Map.Entry<Integer, V> entry2 = iterator2.next();
            final n n5 = new n();
            n5.key = entry2.getKey();
            n5.bx = (int)entry2.getValue();
            final n[] bq = l.bq;
            final int n6 = n4 + 1;
            bq[n4] = n5;
            n4 = n6;
        }
        l.br = new n[this.Lw.size()];
        final Iterator iterator3 = this.Lw.entrySet().iterator();
        int n7 = 0;
        while (iterator3.hasNext()) {
            final Map.Entry<Integer, V> entry3 = iterator3.next();
            final n n8 = new n();
            n8.key = entry3.getKey();
            n8.bx = (long)entry3.getValue();
            final n[] br = l.br;
            final int n9 = n7 + 1;
            br[n7] = n8;
            n7 = n9;
        }
        l.bs = new n[this.LF.size()];
        for (final Map.Entry<Integer, V> entry4 : this.LF.entrySet()) {
            final n n10 = new n();
            n10.key = entry4.getKey();
            n10.bx = (long)entry4.getValue();
            final n[] bs = l.bs;
            final int n11 = n + 1;
            bs[n] = n10;
            n = n11;
        }
        return l;
    }
}
