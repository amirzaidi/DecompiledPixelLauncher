// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

import java.lang.reflect.Array;
import java.io.IOException;

public class g
{
    protected final boolean Lk;
    public final int Ll;
    protected final Class Lm;
    protected final int type;
    
    void SX(final Object o, final b b) {
        if (this.Lk) {
            this.Tb(o, b);
        }
        else {
            this.SY(o, b);
        }
    }
    
    protected void SY(final Object o, final b b) {
        Label_0148: {
            a a = null;
            int ll = 0;
            try {
                b.RZ(this.Ll);
                switch (this.type) {
                    default:
                    case 10: {
                        Label_0117: {
                            break Label_0117;
                            try {
                                try {
                                    final StringBuilder append = new StringBuilder().append("Unknown type ");
                                    try {
                                        final StringBuilder append2 = append.append(this.type);
                                        try {
                                            throw new IllegalArgumentException(append2.toString());
                                            a = (a)o;
                                            try {
                                                ll = this.Ll;
                                            }
                                            catch (IOException ex) {}
                                        }
                                        catch (IOException ex2) {}
                                    }
                                    catch (IOException ex3) {}
                                }
                                catch (IOException ex4) {}
                            }
                            catch (IOException ex5) {}
                        }
                        break;
                    }
                    case 11: {
                        break Label_0148;
                    }
                }
            }
            catch (IOException ex6) {}
            final int st = f.ST(ll);
            b.RI(a);
            b.Sd(st, 4);
            return;
        }
        b.RG((a)o);
    }
    
    protected int SZ(final Object o) {
        final int st = f.ST(this.Ll);
        switch (this.type) {
            default: {
                throw new IllegalArgumentException("Unknown type " + this.type);
            }
            case 10: {
                return b.RR(st, (a)o);
            }
            case 11: {
                return b.Rt(st, (a)o);
            }
        }
    }
    
    int Ta(final Object o) {
        if (this.Lk) {
            return this.Tc(o);
        }
        return this.SZ(o);
    }
    
    protected void Tb(final Object o, final b b) {
        for (int length = Array.getLength(o), i = 0; i < length; ++i) {
            final Object value = Array.get(o, i);
            if (value != null) {
                this.SY(value, b);
            }
        }
    }
    
    protected int Tc(final Object o) {
        int n = 0;
        for (int length = Array.getLength(o), i = 0; i < length; ++i) {
            if (Array.get(o, i) != null) {
                n += this.SZ(Array.get(o, i));
            }
        }
        return n;
    }
}
