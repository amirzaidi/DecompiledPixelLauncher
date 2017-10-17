// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.io.DataInputStream;
import java.io.DataOutputStream;

public class b
{
    int Nk;
    public double[] Nl;
    int Nm;
    
    public b() {
    }
    
    public b(final int nk, final int nm) {
        this.Nk = nk;
        this.Nm = nm;
        this.Nl = new double[nk * nm];
    }
    
    public static b TO(final b b, final b b2, final boolean b3, final b b4, final boolean b5) {
        if (b.TU(false) == b2.TW(b3) && b4.TW(false) == b.TW(false) && b4.TU(false) == b2.TU(b3)) {
            e.getInstance().Uc(b4.Nl.length, new h(b5, b4, b, b2, b3));
            return b4;
        }
        throw new RuntimeException(new StringBuilder(71).append(b.TW(false)).append("x").append(b.TU(false)).append(" ").append(b2.TW(b3)).append("x").append(b2.TU(b3)).append(" ").append(b4.TW(false)).append("x").append(b4.TU(false)).toString());
    }
    
    public static b TT(final b b, final b b2, final b b3, final boolean b4) {
        if (b.TU(false) == b2.TU(false) && b.TW(false) == b2.TW(false) && b3.TU(false) == b2.TU(false) && b3.TW(false) == b2.TW(false)) {
            e.getInstance().Uc(b3.Nl.length, new p(b4, b3, b, b2));
            return b3;
        }
        throw new RuntimeException(new StringBuilder(71).append(b.TW(false)).append("x").append(b.TU(false)).append(" ").append(b2.TW(false)).append("x").append(b2.TU(false)).append(" ").append(b3.TW(false)).append("x").append(b3.TU(false)).toString());
    }
    
    public static b TV(final b b, final b b2) {
        if (b.TW(false) == b2.TW(false)) {
            final b b3 = new b(b.TW(false), b.TU(false) + b2.TU(false));
            for (int i = 0; i < b3.TW(false); ++i) {
                for (int j = 0; j < b3.TU(false); ++j) {
                    if (j >= b.TU(false)) {
                        b3.TQ(false, i, j, b2.TP(false, i, j - b.TU(false)));
                    }
                    else {
                        b3.TQ(false, i, j, b.TP(false, i, j));
                    }
                }
            }
            return b3;
        }
        throw new RuntimeException();
    }
    
    public double TP(final boolean b, final int n, final int n2) {
        final int n3 = 41;
        if (n >= this.TW(b)) {
            throw new RuntimeException(new StringBuilder(n3).append("requested row: ").append(n).append(" >= ").append(this.TW(b)).toString());
        }
        if (n2 < this.TU(b)) {
            return this.Nl[this.TS(b, n, n2)];
        }
        throw new RuntimeException(new StringBuilder(n3).append("requested col: ").append(n2).append(" >= ").append(this.TU(b)).toString());
    }
    
    public void TQ(final boolean b, final int n, final int n2, final double n3) {
        this.Nl[this.TS(b, n, n2)] = n3;
    }
    
    public b TR(final b b) {
        if (this.TU(false) == b.TU(false) && this.TW(false) == b.TW(false)) {
            e.getInstance().Uc(this.Nl.length, new j(this, b));
            return this;
        }
        throw new RuntimeException(new StringBuilder(47).append(this.TW(false)).append("x").append(this.TU(false)).append(" ").append(b.TW(false)).append("x").append(b.TU(false)).toString());
    }
    
    public int TS(final boolean b, final int n, final int n2) {
        if (!b) {
            return this.Nm * n + n2;
        }
        return this.Nm * n2 + n;
    }
    
    public int TU(final boolean b) {
        if (!b) {
            return this.Nm;
        }
        return this.Nk;
    }
    
    public int TW(final boolean b) {
        if (!b) {
            return this.Nk;
        }
        return this.Nm;
    }
    
    public void TX(final boolean b, final int n, final int n2, final double n3) {
        final double[] nl = this.Nl;
        final int ts = this.TS(b, n, n2);
        nl[ts] += n3;
    }
    
    public void TY(final DataOutputStream dataOutputStream) {
        dataOutputStream.writeInt(this.Nk);
        dataOutputStream.writeInt(this.Nm);
        for (int i = 0; i < this.Nl.length; ++i) {
            dataOutputStream.writeDouble(this.Nl[i]);
        }
    }
    
    public void TZ(final DataInputStream dataInputStream) {
        this.Nk = dataInputStream.readInt();
        this.Nm = dataInputStream.readInt();
        this.Nl = new double[this.Nk * this.Nm];
        for (int i = 0; i < this.Nl.length; ++i) {
            this.Nl[i] = dataInputStream.readDouble();
        }
    }
    
    public b Ua(final double n) {
        e.getInstance().Uc(this.Nl.length, new q(this, n));
        return this;
    }
    
    public void clear() {
        k.Up(this.Nl);
    }
    
    public b clone() {
        final b b = new b(this.Nk, this.Nm);
        for (int i = 0; i < this.Nl.length; ++i) {
            b.Nl[i] = this.Nl[i];
        }
        return b;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.TW(false); ++i) {
            for (int j = 0; j < this.TU(false); ++j) {
                sb.append(new StringBuilder(25).append(this.TP(false, i, j)).append(" ").toString());
            }
            sb.append("\n");
        }
        return sb.toString();
    }
}
