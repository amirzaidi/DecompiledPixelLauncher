// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.b;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.DataInputStream;
import java.util.regex.Pattern;
import java.util.Iterator;
import java.util.ArrayList;
import java.util.List;

public class c extends b implements a
{
    private List MY;
    private int MZ;
    
    public c() {
        this.MY = new ArrayList();
        this.MZ = 0;
    }
    
    private int Ty(final b b) {
        final Iterator<b> iterator = this.MY.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final b b2 = iterator.next();
            if (b2 == b) {
                break;
            }
            n += b2.Ts();
        }
        return n;
    }
    
    public void SR(final b b, final int n) {
        final int n2 = this.Ty(b) + n;
        if (this.MX != null) {
            this.MX.SR(this, n2);
        }
    }
    
    public int Ts() {
        return this.MZ;
    }
    
    public com.google.research.reflection.layers.b Tt(final com.google.research.reflection.common.a a, final com.google.research.reflection.a.b b) {
        final com.google.research.reflection.layers.b b2 = new com.google.research.reflection.layers.b(1, this.MZ);
        final Iterator<b> iterator = this.MY.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final b b3 = iterator.next();
            final double[] nl = b3.Tt(a, b).Nl;
            for (int i = 0; i < nl.length; ++i) {
                b2.Nl[i + n] = nl[i];
            }
            n += b3.Ts();
        }
        return b2;
    }
    
    public void Tu(final List list) {
        if (list.size() >= 2) {
            final Pattern compile = Pattern.compile(list.get(0));
            for (final b b : this.MY) {
                if (compile.matcher(b.getClass().getName()).matches()) {
                    b.Tu(list.subList(1, list.size()));
                }
            }
        }
    }
    
    public void Tv(final DataInputStream dataInputStream) {
        int i = 0;
        this.MY.clear();
        this.MZ = 0;
        while (i < dataInputStream.readInt()) {
            final String utf = dataInputStream.readUTF();
            final b tp = b.Tp(utf);
            if (tp == null) {
                final String value = String.valueOf(utf);
                final int length = value.length();
                final String s = "Cannot find extractor with ";
                String concat;
                if (length == 0) {
                    concat = new String(s);
                }
                else {
                    concat = s.concat(value);
                }
                throw new IOException(concat);
            }
            tp.Tv(dataInputStream);
            this.Tz(tp);
            ++i;
        }
    }
    
    public void Tw(final DataOutputStream dataOutputStream) {
        dataOutputStream.writeInt(this.MY.size());
        for (final b b : this.MY) {
            dataOutputStream.writeUTF(b.Tr(b));
            b.Tw(dataOutputStream);
        }
    }
    
    public void Tz(final b b) {
        this.MY.add(b);
        b.Tq(this);
        this.MZ += b.Ts();
    }
    
    public c clone() {
        final c c = new c();
        final Iterator<b> iterator = this.MY.iterator();
        while (iterator.hasNext()) {
            c.Tz(iterator.next().clone());
        }
        return c;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.MY.size(); ++i) {
            sb.append(((b)this.MY.get(i)).toString());
        }
        return sb.toString();
    }
}
