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
    List Mn;
    com.google.research.reflection.common.a Mo;
    com.google.research.reflection.common.a Mp;
    
    public a(final int n) {
        final boolean b = true;
        this.Mn = new ArrayList();
        this.Mp = new com.google.research.reflection.common.a(n, b);
        this.Mo = new com.google.research.reflection.common.a(n, b);
    }
    
    private void UT() {
        for (int i = 0; i < this.Mn.size(); ++i) {
            ((v)this.Mn.get(i)).VQ();
        }
    }
    
    public void UR() {
        this.Mp.clear();
        this.Mo.clear();
        final Iterator<v> iterator = this.Mn.iterator();
        while (iterator.hasNext()) {
            iterator.next().Wc();
        }
    }
    
    public List US() {
        return this.Mn;
    }
    
    public void UU(final b b, final b b2, final int n, final boolean b3) {
        final boolean b4 = true;
        if (b3 && !(this.Mn.get(this.Mn.size() - 1) instanceof m)) {
            throw new RuntimeException("Lacks outputlayer");
        }
        if (b != null) {
            this.Mp.add(b);
            this.Mo.add(b2);
            final int ul = this.Mp.Ul();
            this.UT();
            final int ui = this.Mp.Ui();
            final int size = this.Mn.size();
            for (int i = size - 1; i >= 0; --i) {
                final v v = this.Mn.get(i);
                if (!v.Oj) {
                    if (v.Oh.Ul() != ul) {
                        throw new RuntimeException(new StringBuilder(110).append("backward: dense input vector has a different frame index from the target frame index: ").append(v.Oh.Ul()).append("!=").append(ul).toString());
                    }
                }
                else if (v.Oi.Ul() != ul) {
                    throw new RuntimeException("backward: sparse input vector has a different frame index from the target frame index");
                }
            }
            for (int n2 = ui - 1; n2 >= 0 && ui - 1 - n2 < n; --n2) {
                final b b5 = (b)this.Mp.Ug(n2);
                final b b6 = (b)this.Mo.Ug(n2);
                int j = size - 1;
                b wm = b5;
                while (j >= 0) {
                    final v v2 = this.Mn.get(j);
                    v2.VR(this, n2, wm, v2.Wi(), b6);
                    wm = v2.Wm();
                    --j;
                }
            }
            return;
        }
        final b b7 = new b(b4 ? 1 : 0, this.Va().Wl());
        final b b8 = new b(b4 ? 1 : 0, this.Va().Wl());
        this.Mp.add(b7);
        this.Mo.add(b8);
    }
    
    public int UV() {
        return this.Mn.get(0).Wh();
    }
    
    public b UW(final boolean b, ArrayList[] array, b b2, final boolean b3) {
        if (b3 && !(this.Mn.get(this.Mn.size() - 1) instanceof m)) {
            throw new RuntimeException("Lacks outputlayer");
        }
        int i = 0;
        b b4 = null;
        while (i < this.Mn.size()) {
            final b vp = this.Mn.get(i).VP(b, this, array, b2);
            ++i;
            b2 = vp;
            array = null;
            b4 = vp;
        }
        return b4;
    }
    
    public void UX(final v v) {
        if (v.Wg() != this.Mp.Uk()) {
            throw new RuntimeException(new StringBuilder(102).append("Inconsistent framebuffer size with the added layer: targetsize=").append(this.Mp.Uk()).append(" layerbuffersize=").append(v.Wg()).toString());
        }
        if (v instanceof o && ((o)v).VO() == this.Mn.size()) {
            throw new RuntimeException();
        }
        this.Mn.add(v);
    }
    
    public void UY(final DataOutputStream dataOutputStream) {
        dataOutputStream.writeInt(this.Mn.size());
        for (final v v : this.Mn) {
            dataOutputStream.writeUTF(v.VI());
            v.VJ(dataOutputStream);
        }
        dataOutputStream.writeUTF("NeuralNet");
    }
    
    public void UZ(final DataInputStream dataInputStream) {
        this.Mn.clear();
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
            v.VK(dataInputStream);
            this.Mn.add(v);
        }
        final String utf2 = dataInputStream.readUTF();
        if (utf2.equals("NeuralNet")) {
            return;
        }
        throw new IOException(new StringBuilder(String.valueOf(utf2).length() + 45).append("Inconsistent ending: [").append(utf2).append("] expected: [NeuralNet]").toString());
    }
    
    public v Va() {
        return this.Mn.get(this.Mn.size() - 1);
    }
    
    public a clone() {
        final a a = new a(this.Mp.Uk());
        final Iterator<v> iterator = this.Mn.iterator();
        while (iterator.hasNext()) {
            a.Mn.add(iterator.next().clone());
        }
        return a;
    }
    
    public void update() {
        for (int i = this.Mn.size() - 1; i >= 0; --i) {
            ((v)this.Mn.get(i)).update();
        }
    }
}
