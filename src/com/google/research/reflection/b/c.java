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
    private List Me;
    private int Mf;
    
    public c() {
        this.Me = new ArrayList();
        this.Mf = 0;
    }
    
    private int UL(final b b) {
        final Iterator<b> iterator = this.Me.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final b b2 = iterator.next();
            if (b2 == b) {
                break;
            }
            n += b2.UF();
        }
        return n;
    }
    
    public int UF() {
        return this.Mf;
    }
    
    public com.google.research.reflection.layers.b UG(final com.google.research.reflection.common.a a, final com.google.research.reflection.a.b b) {
        final com.google.research.reflection.layers.b b2 = new com.google.research.reflection.layers.b(1, this.Mf);
        final Iterator<b> iterator = this.Me.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final b b3 = iterator.next();
            final double[] mr = b3.UG(a, b).Mr;
            for (int i = 0; i < mr.length; ++i) {
                b2.Mr[i + n] = mr[i];
            }
            n += b3.UF();
        }
        return b2;
    }
    
    public void UH(final List list) {
        if (list.size() >= 2) {
            final Pattern compile = Pattern.compile(list.get(0));
            for (final b b : this.Me) {
                if (compile.matcher(b.getClass().getName()).matches()) {
                    b.UH(list.subList(1, list.size()));
                }
            }
        }
    }
    
    public void UI(final DataInputStream dataInputStream) {
        int i = 0;
        this.Me.clear();
        this.Mf = 0;
        while (i < dataInputStream.readInt()) {
            final String utf = dataInputStream.readUTF();
            final b uc = b.UC(utf);
            if (uc == null) {
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
            uc.UI(dataInputStream);
            this.UM(uc);
            ++i;
        }
    }
    
    public void UJ(final DataOutputStream dataOutputStream) {
        dataOutputStream.writeInt(this.Me.size());
        for (final b b : this.Me) {
            dataOutputStream.writeUTF(b.UE(b));
            b.UJ(dataOutputStream);
        }
    }
    
    public void UM(final b b) {
        this.Me.add(b);
        b.UD(this);
        this.Mf += b.UF();
    }
    
    public void Ue(final b b, final int n) {
        final int n2 = this.UL(b) + n;
        if (this.Md != null) {
            this.Md.Ue(this, n2);
        }
    }
    
    public c clone() {
        final c c = new c();
        final Iterator<b> iterator = this.Me.iterator();
        while (iterator.hasNext()) {
            c.UM(iterator.next().clone());
        }
        return c;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.Me.size(); ++i) {
            sb.append(((b)this.Me.get(i)).toString());
        }
        return sb.toString();
    }
}
