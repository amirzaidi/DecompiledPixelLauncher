// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.io.IOException;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.util.Iterator;
import java.util.ArrayList;
import java.util.List;

public class a
{
    List Nh;
    com.google.research.reflection.common.a Ni;
    com.google.research.reflection.common.a Nj;
    
    public a(final int n) {
        final boolean b = true;
        this.Nh = new ArrayList();
        this.Nj = new com.google.research.reflection.common.a(n, b);
        this.Ni = new com.google.research.reflection.common.a(n, b);
    }
    
    private void TG() {
        for (int i = 0; i < this.Nh.size(); ++i) {
            ((v)this.Nh.get(i)).UC();
        }
    }
    
    public void TE() {
        this.Nj.clear();
        this.Ni.clear();
        final Iterator<v> iterator = this.Nh.iterator();
        while (iterator.hasNext()) {
            iterator.next().UO();
        }
    }
    
    public List TF() {
        return this.Nh;
    }
    
    public void TH(final b b, final b b2, final int n, final boolean b3) {
        final boolean b4 = true;
        if (b3 && !(this.Nh.get(this.Nh.size() - 1) instanceof m)) {
            throw new RuntimeException("Lacks outputlayer");
        }
        if (b != null) {
            this.Nj.add(b);
            this.Ni.add(b2);
            final int sy = this.Nj.SY();
            this.TG();
            final int sv = this.Nj.SV();
            final int size = this.Nh.size();
            for (int i = size - 1; i >= 0; --i) {
                final v v = this.Nh.get(i);
                if (!v.Pd) {
                    if (v.Pb.SY() != sy) {
                        throw new RuntimeException(new StringBuilder(110).append("backward: dense input vector has a different frame index from the target frame index: ").append(v.Pb.SY()).append("!=").append(sy).toString());
                    }
                }
                else if (v.Pc.SY() != sy) {
                    throw new RuntimeException("backward: sparse input vector has a different frame index from the target frame index");
                }
            }
            for (int n2 = sv - 1; n2 >= 0 && sv - 1 - n2 < n; --n2) {
                final b b5 = (b)this.Nj.ST(n2);
                final b b6 = (b)this.Ni.ST(n2);
                int j = size - 1;
                b uy = b5;
                while (j >= 0) {
                    final v v2 = this.Nh.get(j);
                    v2.UD(this, n2, uy, v2.UU(), b6);
                    uy = v2.UY();
                    --j;
                }
            }
            return;
        }
        final b b7 = new b(b4 ? 1 : 0, this.TN().UX());
        final b b8 = new b(b4 ? 1 : 0, this.TN().UX());
        this.Nj.add(b7);
        this.Ni.add(b8);
    }
    
    public int TI() {
        return this.Nh.get(0).UT();
    }
    
    public b TJ(final boolean b, ArrayList[] array, b b2, final boolean b3) {
        if (b3 && !(this.Nh.get(this.Nh.size() - 1) instanceof m)) {
            throw new RuntimeException("Lacks outputlayer");
        }
        int i = 0;
        b b4 = null;
        while (i < this.Nh.size()) {
            final b ub = this.Nh.get(i).UB(b, this, array, b2);
            ++i;
            b2 = ub;
            array = null;
            b4 = ub;
        }
        return b4;
    }
    
    public void TK(final v v) {
        if (v.US() != this.Nj.SX()) {
            throw new RuntimeException(new StringBuilder(102).append("Inconsistent framebuffer size with the added layer: targetsize=").append(this.Nj.SX()).append(" layerbuffersize=").append(v.US()).toString());
        }
        if (v instanceof o && ((o)v).UA() == this.Nh.size()) {
            throw new RuntimeException();
        }
        this.Nh.add(v);
    }
    
    public void TL(final DataOutputStream dataOutputStream) {
        dataOutputStream.writeInt(this.Nh.size());
        for (final v v : this.Nh) {
            dataOutputStream.writeUTF(v.Uu());
            v.Uv(dataOutputStream);
        }
        dataOutputStream.writeUTF("NeuralNet");
    }
    
    public void TM(final DataInputStream dataInputStream) {
        this.Nh.clear();
        for (int int1 = dataInputStream.readInt(), i = 0; i < int1; ++i) {
            final String utf = dataInputStream.readUTF();
            v v;
            if (!utf.equals("LinearLayer")) {
                if (!utf.equals("OutputLayer")) {
                    if (!utf.equals("LSTMLayer")) {
                        final String value = String.valueOf(utf);
                        final int length = value.length();
                        final String s = "Unsupported layer type: ";
                        String concat;
                        if (length == 0) {
                            concat = new String(s);
                        }
                        else {
                            concat = s.concat(value);
                        }
                        throw new IOException(concat);
                    }
                    v = new s();
                }
                else {
                    v = new m();
                }
            }
            else {
                v = new o();
            }
            v.Uw(dataInputStream);
            this.Nh.add(v);
        }
        final String utf2 = dataInputStream.readUTF();
        if (utf2.equals("NeuralNet")) {
            return;
        }
        throw new IOException(new StringBuilder(String.valueOf(utf2).length() + 45).append("Inconsistent ending: [").append(utf2).append("] expected: [NeuralNet]").toString());
    }
    
    public v TN() {
        return this.Nh.get(this.Nh.size() - 1);
    }
    
    public a clone() {
        final a a = new a(this.Nj.SX());
        final Iterator<v> iterator = this.Nh.iterator();
        while (iterator.hasNext()) {
            a.Nh.add(iterator.next().clone());
        }
        return a;
    }
    
    public void update() {
        for (int i = this.Nh.size() - 1; i >= 0; --i) {
            ((v)this.Nh.get(i)).update();
        }
    }
}
