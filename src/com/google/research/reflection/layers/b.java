// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.io.DataInputStream;
import java.io.DataOutputStream;

public class b
{
    int Mq;
    public double[] Mr;
    int Ms;
    
    public b() {
    }
    
    public b(final int mq, final int ms) {
        this.Mq = mq;
        this.Ms = ms;
        this.Mr = new double[mq * ms];
    }
    
    public static b Vb(final b b, final b b2, final boolean b3, final b b4, final boolean b5) {
        if (b.Vh(false) == b2.Vj(b3) && b4.Vj(false) == b.Vj(false) && b4.Vh(false) == b2.Vh(b3)) {
            e.Vq().Vp(b4.Mr.length, new h(b5, b4, b, b2, b3));
            return b4;
        }
        throw new RuntimeException(new StringBuilder(71).append(b.Vj(false)).append("x").append(b.Vh(false)).append(" ").append(b2.Vj(b3)).append("x").append(b2.Vh(b3)).append(" ").append(b4.Vj(false)).append("x").append(b4.Vh(false)).toString());
    }
    
    public static b Vg(final b b, final b b2, final b b3, final boolean b4) {
        if (b.Vh(false) == b2.Vh(false) && b.Vj(false) == b2.Vj(false) && b3.Vh(false) == b2.Vh(false) && b3.Vj(false) == b2.Vj(false)) {
            e.Vq().Vp(b3.Mr.length, new p(b4, b3, b, b2));
            return b3;
        }
        throw new RuntimeException(new StringBuilder(71).append(b.Vj(false)).append("x").append(b.Vh(false)).append(" ").append(b2.Vj(false)).append("x").append(b2.Vh(false)).append(" ").append(b3.Vj(false)).append("x").append(b3.Vh(false)).toString());
    }
    
    public static b Vi(final b b, final b b2) {
        if (b.Vj(false) == b2.Vj(false)) {
            final b b3 = new b(b.Vj(false), b.Vh(false) + b2.Vh(false));
            for (int i = 0; i < b3.Vj(false); ++i) {
                for (int j = 0; j < b3.Vh(false); ++j) {
                    if (j >= b.Vh(false)) {
                        b3.Vd(false, i, j, b2.Vc(false, i, j - b.Vh(false)));
                    }
                    else {
                        b3.Vd(false, i, j, b.Vc(false, i, j));
                    }
                }
            }
            return b3;
        }
        throw new RuntimeException();
    }
    
    public double Vc(final boolean b, final int n, final int n2) {
        final int n3 = 41;
        if (n >= this.Vj(b)) {
            throw new RuntimeException(new StringBuilder(n3).append("requested row: ").append(n).append(" >= ").append(this.Vj(b)).toString());
        }
        if (n2 < this.Vh(b)) {
            return this.Mr[this.Vf(b, n, n2)];
        }
        throw new RuntimeException(new StringBuilder(n3).append("requested col: ").append(n2).append(" >= ").append(this.Vh(b)).toString());
    }
    
    public void Vd(final boolean b, final int n, final int n2, final double n3) {
        this.Mr[this.Vf(b, n, n2)] = n3;
    }
    
    public b Ve(final b b) {
        if (this.Vh(false) == b.Vh(false) && this.Vj(false) == b.Vj(false)) {
            e.Vq().Vp(this.Mr.length, new i(this, b));
            return this;
        }
        throw new RuntimeException(new StringBuilder(47).append(this.Vj(false)).append("x").append(this.Vh(false)).append(" ").append(b.Vj(false)).append("x").append(b.Vh(false)).toString());
    }
    
    public int Vf(final boolean b, final int n, final int n2) {
        if (!b) {
            return this.Ms * n + n2;
        }
        return this.Ms * n2 + n;
    }
    
    public int Vh(final boolean b) {
        if (!b) {
            return this.Ms;
        }
        return this.Mq;
    }
    
    public int Vj(final boolean b) {
        if (!b) {
            return this.Mq;
        }
        return this.Ms;
    }
    
    public void Vk(final boolean b, final int n, final int n2, final double n3) {
        final double[] mr = this.Mr;
        final int vf = this.Vf(b, n, n2);
        mr[vf] += n3;
    }
    
    public void Vl(final DataOutputStream dataOutputStream) {
        dataOutputStream.writeInt(this.Mq);
        dataOutputStream.writeInt(this.Ms);
        for (int i = 0; i < this.Mr.length; ++i) {
            dataOutputStream.writeDouble(this.Mr[i]);
        }
    }
    
    public void Vm(final DataInputStream dataInputStream) {
        this.Mq = dataInputStream.readInt();
        this.Ms = dataInputStream.readInt();
        this.Mr = new double[this.Mq * this.Ms];
        for (int i = 0; i < this.Mr.length; ++i) {
            this.Mr[i] = dataInputStream.readDouble();
        }
    }
    
    public b Vn(final double n) {
        e.Vq().Vp(this.Mr.length, new q(this, n));
        return this;
    }
    
    public void clear() {
        k.VD(this.Mr);
    }
    
    public b clone() {
        final b b = new b(this.Mq, this.Ms);
        for (int i = 0; i < this.Mr.length; ++i) {
            b.Mr[i] = this.Mr[i];
        }
        return b;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.Vj(false); ++i) {
            for (int j = 0; j < this.Vh(false); ++j) {
                sb.append(new StringBuilder(25).append(this.Vc(false, i, j)).append(" ").toString());
            }
            sb.append("\n");
        }
        return sb.toString();
    }
}
