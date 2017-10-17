// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Collection;
import java.util.ArrayList;
import java.util.List;

class k implements Cloneable
{
    private List Qa;
    private g Qb;
    private Object Qc;
    
    k() {
        this.Qa = new ArrayList();
    }
    
    private byte[] Xk() {
        final byte[] array = new byte[this.computeSerializedSize()];
        this.writeTo(b.VJ(array));
        return array;
    }
    
    public final k clone() {
        int n = 0;
        final k k = new k();
        while (true) {
            a[] qc11 = null;
            a a2 = null;
            try {
                k.Qb = this.Qb;
                while (true) {
                    Label_0098: {
                        Label_0059: {
                            if (this.Qa != null) {
                                break Label_0059;
                            }
                            k.Qa = null;
                            if (this.Qc != null) {
                                break Label_0098;
                            }
                            Label_0057: {
                                return k;
                            }
                        }
                        final List qa = k.Qa;
                        try {
                            qa.addAll(this.Qa);
                            continue;
                            final Object qc = this.Qc;
                            try {
                                final a a = (a)qc;
                                try {
                                    k.Qc = a.clone();
                                    return k;
                                    final Object qc2 = this.Qc;
                                    try {
                                        final byte[] array = (byte[])qc2;
                                        try {
                                            k.Qc = array.clone();
                                            return k;
                                            final Object qc3 = this.Qc;
                                            try {
                                                final byte[][] array2 = (byte[][])qc3;
                                                try {
                                                    final int length = array2.length;
                                                    try {
                                                        final byte[][] qc4 = new byte[length][];
                                                        k.Qc = qc4;
                                                        int i = 0;
                                                        while (i < array2.length) {
                                                            final byte[] array3 = array2[i];
                                                            try {
                                                                final byte[] clone = array3.clone();
                                                                try {
                                                                    qc4[i] = clone;
                                                                    ++i;
                                                                    continue;
                                                                    final Object qc5;
                                                                    Label_0290: {
                                                                        qc5 = this.Qc;
                                                                    }
                                                                    // iftrue(Label_0337:, !this.Qc instanceof boolean[])
                                                                    try {
                                                                        final boolean[] array4 = (boolean[])qc5;
                                                                        try {
                                                                            k.Qc = array4.clone();
                                                                            return k;
                                                                            final Object qc6;
                                                                            Label_0337: {
                                                                                qc6 = this.Qc;
                                                                            }
                                                                            // iftrue(Label_0384:, !this.Qc instanceof int[])
                                                                            try {
                                                                                final int[] array5 = (int[])qc6;
                                                                                try {
                                                                                    k.Qc = array5.clone();
                                                                                    return k;
                                                                                    final Object qc7;
                                                                                    Label_0384: {
                                                                                        qc7 = this.Qc;
                                                                                    }
                                                                                    // iftrue(Label_0431:, !this.Qc instanceof long[])
                                                                                    try {
                                                                                        final long[] array6 = (long[])qc7;
                                                                                        try {
                                                                                            k.Qc = array6.clone();
                                                                                            return k;
                                                                                            final Object qc8 = this.Qc;
                                                                                            try {
                                                                                                final float[] array7 = (float[])qc8;
                                                                                                try {
                                                                                                    k.Qc = array7.clone();
                                                                                                    return k;
                                                                                                    final Object qc9 = this.Qc;
                                                                                                    try {
                                                                                                        final double[] array8 = (double[])qc9;
                                                                                                        try {
                                                                                                            k.Qc = array8.clone();
                                                                                                            return k;
                                                                                                            final Object qc10;
                                                                                                            Label_0525: {
                                                                                                                qc10 = this.Qc;
                                                                                                            }
                                                                                                            // iftrue(Label_0057:, !this.Qc instanceof a[])
                                                                                                            try {
                                                                                                                final a[] array9 = (a[])qc10;
                                                                                                                try {
                                                                                                                    final int length2 = array9.length;
                                                                                                                    try {
                                                                                                                        qc11 = new a[length2];
                                                                                                                        k.Qc = qc11;
                                                                                                                        if (n >= array9.length) {
                                                                                                                            return k;
                                                                                                                        }
                                                                                                                        a2 = array9[n];
                                                                                                                    }
                                                                                                                    catch (CloneNotSupportedException ex) {}
                                                                                                                }
                                                                                                                catch (CloneNotSupportedException ex2) {}
                                                                                                            }
                                                                                                            catch (CloneNotSupportedException ex3) {}
                                                                                                        }
                                                                                                        catch (CloneNotSupportedException ex4) {}
                                                                                                    }
                                                                                                    catch (CloneNotSupportedException ex5) {}
                                                                                                    Label_0478:;
                                                                                                }
                                                                                                // iftrue(Label_0525:, !this.Qc instanceof double[])
                                                                                                catch (CloneNotSupportedException ex6) {}
                                                                                            }
                                                                                            catch (CloneNotSupportedException ex7) {}
                                                                                            Label_0431:;
                                                                                        }
                                                                                        // iftrue(Label_0478:, !this.Qc instanceof float[])
                                                                                        catch (CloneNotSupportedException ex8) {}
                                                                                    }
                                                                                    catch (CloneNotSupportedException ex9) {}
                                                                                }
                                                                                catch (CloneNotSupportedException ex10) {}
                                                                            }
                                                                            catch (CloneNotSupportedException ex11) {}
                                                                        }
                                                                        catch (CloneNotSupportedException ex12) {}
                                                                    }
                                                                    catch (CloneNotSupportedException ex13) {}
                                                                }
                                                                catch (CloneNotSupportedException ex14) {}
                                                            }
                                                            catch (CloneNotSupportedException ex15) {}
                                                        }
                                                    }
                                                    catch (CloneNotSupportedException ex16) {}
                                                }
                                                catch (CloneNotSupportedException ex17) {}
                                            }
                                            catch (CloneNotSupportedException ex18) {}
                                            Label_0192:;
                                        }
                                        // iftrue(Label_0290:, !this.Qc instanceof byte[][])
                                        catch (CloneNotSupportedException ex19) {}
                                    }
                                    catch (CloneNotSupportedException ex20) {}
                                    Label_0145:;
                                }
                                // iftrue(Label_0192:, !this.Qc instanceof byte[])
                                catch (CloneNotSupportedException ex21) {}
                            }
                            catch (CloneNotSupportedException ex22) {}
                        }
                        // iftrue(Label_0145:, !this.Qc instanceof a)
                        catch (CloneNotSupportedException ex23) {}
                    }
                    break;
                }
            }
            catch (CloneNotSupportedException ex24) {}
            qc11[n] = a2.clone();
            ++n;
            continue;
        }
    }
    
    int computeSerializedSize() {
        int wv;
        if (this.Qc != null) {
            wv = this.Qb.WV(this.Qc);
        }
        else {
            final Iterator iterator = this.Qa.iterator();
            wv = 0;
            while (iterator.hasNext()) {
                wv += iterator.next().computeSerializedSize();
            }
        }
        return wv;
    }
    
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof k)) {
            return false;
        }
        final k k = (k)o;
        if (this.Qc != null && k.Qc != null) {
            if (this.Qb != k.Qb) {
                return false;
            }
            if (!this.Qb.PT.isArray()) {
                return this.Qc.equals(k.Qc);
            }
            if (this.Qc instanceof byte[]) {
                return Arrays.equals((byte[])this.Qc, (byte[])k.Qc);
            }
            if (this.Qc instanceof int[]) {
                return Arrays.equals((int[])this.Qc, (int[])k.Qc);
            }
            if (this.Qc instanceof long[]) {
                return Arrays.equals((long[])this.Qc, (long[])k.Qc);
            }
            if (this.Qc instanceof float[]) {
                return Arrays.equals((float[])this.Qc, (float[])k.Qc);
            }
            if (this.Qc instanceof double[]) {
                return Arrays.equals((double[])this.Qc, (double[])k.Qc);
            }
            if (this.Qc instanceof boolean[]) {
                return Arrays.equals((boolean[])this.Qc, (boolean[])k.Qc);
            }
            return Arrays.deepEquals((Object[])this.Qc, (Object[])k.Qc);
        }
        else {
            if (this.Qa != null && k.Qa != null) {
                return this.Qa.equals(k.Qa);
            }
            try {
                final byte[] xk = this.Xk();
                try {
                    return Arrays.equals(xk, k.Xk());
                }
                catch (IOException ex) {
                    throw new IllegalStateException(ex);
                }
            }
            catch (IOException ex2) {}
        }
    }
    
    public int hashCode() {
        try {
            final byte[] xk = this.Xk();
            try {
                return Arrays.hashCode(xk) + 527;
            }
            catch (IOException ex) {
                throw new IllegalStateException(ex);
            }
        }
        catch (IOException ex2) {}
    }
    
    void writeTo(final b b) {
        if (this.Qc != null) {
            this.Qb.WS(this.Qc, b);
        }
        else {
            final Iterator iterator = this.Qa.iterator();
            while (iterator.hasNext()) {
                iterator.next().writeTo(b);
            }
        }
    }
}
