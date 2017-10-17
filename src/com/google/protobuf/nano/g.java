// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

import java.lang.reflect.Array;
import java.io.IOException;

public class g
{
    protected final boolean PR;
    public final int PS;
    protected final Class PT;
    protected final int type;
    
    void WS(final Object o, final b b) {
        if (this.PR) {
            this.WW(o, b);
        }
        else {
            this.WT(o, b);
        }
    }
    
    protected void WT(final Object o, final b b) {
        Label_0148: {
            a a = null;
            int ps = 0;
            try {
                b.VU(this.PS);
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
                                                ps = this.PS;
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
            final int wo = f.WO(ps);
            b.VD(a);
            b.VY(wo, 4);
            return;
        }
        b.VB((a)o);
    }
    
    protected int WU(final Object o) {
        final int wo = f.WO(this.PS);
        switch (this.type) {
            default: {
                throw new IllegalArgumentException("Unknown type " + this.type);
            }
            case 10: {
                return b.VM(wo, (a)o);
            }
            case 11: {
                return b.Vo(wo, (a)o);
            }
        }
    }
    
    int WV(final Object o) {
        if (this.PR) {
            return this.WX(o);
        }
        return this.WU(o);
    }
    
    protected void WW(final Object o, final b b) {
        for (int length = Array.getLength(o), i = 0; i < length; ++i) {
            final Object value = Array.get(o, i);
            if (value != null) {
                this.WT(value, b);
            }
        }
    }
    
    protected int WX(final Object o) {
        int n = 0;
        for (int length = Array.getLength(o), i = 0; i < length; ++i) {
            if (Array.get(o, i) != null) {
                n += this.WU(Array.get(o, i));
            }
        }
        return n;
    }
}
