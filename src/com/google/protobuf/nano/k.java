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
    private List Lt;
    private g Lu;
    private Object Lv;
    
    k() {
        this.Lt = new ArrayList();
    }
    
    private byte[] Tp() {
        final byte[] array = new byte[this.computeSerializedSize()];
        this.writeTo(b.RO(array));
        return array;
    }
    
    public final k clone() {
        int n = 0;
        final k k = new k();
        while (true) {
            a[] lv11 = null;
            a a2 = null;
            try {
                k.Lu = this.Lu;
                while (true) {
                    Label_0098: {
                        Label_0059: {
                            if (this.Lt != null) {
                                break Label_0059;
                            }
                            k.Lt = null;
                            if (this.Lv != null) {
                                break Label_0098;
                            }
                            Label_0057: {
                                return k;
                            }
                        }
                        final List lt = k.Lt;
                        try {
                            lt.addAll(this.Lt);
                            continue;
                            final Object lv = this.Lv;
                            try {
                                final a a = (a)lv;
                                try {
                                    k.Lv = a.clone();
                                    return k;
                                    final Object lv2 = this.Lv;
                                    try {
                                        final byte[] array = (byte[])lv2;
                                        try {
                                            k.Lv = array.clone();
                                            return k;
                                            final Object lv3 = this.Lv;
                                            try {
                                                final byte[][] array2 = (byte[][])lv3;
                                                try {
                                                    final int length = array2.length;
                                                    try {
                                                        final byte[][] lv4 = new byte[length][];
                                                        k.Lv = lv4;
                                                        int i = 0;
                                                        while (i < array2.length) {
                                                            final byte[] array3 = array2[i];
                                                            try {
                                                                final byte[] clone = array3.clone();
                                                                try {
                                                                    lv4[i] = clone;
                                                                    ++i;
                                                                    continue;
                                                                    final Object lv5 = this.Lv;
                                                                    try {
                                                                        final boolean[] array4 = (boolean[])lv5;
                                                                        try {
                                                                            k.Lv = array4.clone();
                                                                            return k;
                                                                            final Object lv6 = this.Lv;
                                                                            try {
                                                                                final int[] array5 = (int[])lv6;
                                                                                try {
                                                                                    k.Lv = array5.clone();
                                                                                    return k;
                                                                                    final Object lv7;
                                                                                    Label_0384: {
                                                                                        lv7 = this.Lv;
                                                                                    }
                                                                                    // iftrue(Label_0431:, !this.Lv instanceof long[])
                                                                                    try {
                                                                                        final long[] array6 = (long[])lv7;
                                                                                        try {
                                                                                            k.Lv = array6.clone();
                                                                                            return k;
                                                                                            final Object lv8 = this.Lv;
                                                                                            try {
                                                                                                final float[] array7 = (float[])lv8;
                                                                                                try {
                                                                                                    k.Lv = array7.clone();
                                                                                                    return k;
                                                                                                    final Object lv9;
                                                                                                    Label_0478: {
                                                                                                        lv9 = this.Lv;
                                                                                                    }
                                                                                                    // iftrue(Label_0525:, !this.Lv instanceof double[])
                                                                                                    try {
                                                                                                        final double[] array8 = (double[])lv9;
                                                                                                        try {
                                                                                                            k.Lv = array8.clone();
                                                                                                            return k;
                                                                                                            final Object lv10 = this.Lv;
                                                                                                            try {
                                                                                                                final a[] array9 = (a[])lv10;
                                                                                                                try {
                                                                                                                    final int length2 = array9.length;
                                                                                                                    try {
                                                                                                                        lv11 = new a[length2];
                                                                                                                        k.Lv = lv11;
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
                                                                                                            Label_0525:;
                                                                                                        }
                                                                                                        // iftrue(Label_0057:, !this.Lv instanceof a[])
                                                                                                        catch (CloneNotSupportedException ex4) {}
                                                                                                    }
                                                                                                    catch (CloneNotSupportedException ex5) {}
                                                                                                }
                                                                                                catch (CloneNotSupportedException ex6) {}
                                                                                            }
                                                                                            catch (CloneNotSupportedException ex7) {}
                                                                                            Label_0431:;
                                                                                        }
                                                                                        // iftrue(Label_0478:, !this.Lv instanceof float[])
                                                                                        catch (CloneNotSupportedException ex8) {}
                                                                                    }
                                                                                    catch (CloneNotSupportedException ex9) {}
                                                                                }
                                                                                catch (CloneNotSupportedException ex10) {}
                                                                            }
                                                                            catch (CloneNotSupportedException ex11) {}
                                                                            Label_0337:;
                                                                        }
                                                                        // iftrue(Label_0384:, !this.Lv instanceof int[])
                                                                        catch (CloneNotSupportedException ex12) {}
                                                                    }
                                                                    catch (CloneNotSupportedException ex13) {}
                                                                    Label_0290:;
                                                                }
                                                                // iftrue(Label_0337:, !this.Lv instanceof boolean[])
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
                                        // iftrue(Label_0290:, !this.Lv instanceof byte[][])
                                        catch (CloneNotSupportedException ex19) {}
                                    }
                                    catch (CloneNotSupportedException ex20) {}
                                    Label_0145:;
                                }
                                // iftrue(Label_0192:, !this.Lv instanceof byte[])
                                catch (CloneNotSupportedException ex21) {}
                            }
                            catch (CloneNotSupportedException ex22) {}
                        }
                        // iftrue(Label_0145:, !this.Lv instanceof a)
                        catch (CloneNotSupportedException ex23) {}
                    }
                    break;
                }
            }
            catch (CloneNotSupportedException ex24) {}
            lv11[n] = a2.clone();
            ++n;
            continue;
        }
    }
    
    int computeSerializedSize() {
        int ta;
        if (this.Lv != null) {
            ta = this.Lu.Ta(this.Lv);
        }
        else {
            final Iterator iterator = this.Lt.iterator();
            ta = 0;
            while (iterator.hasNext()) {
                ta += iterator.next().computeSerializedSize();
            }
        }
        return ta;
    }
    
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof k)) {
            return false;
        }
        final k k = (k)o;
        if (this.Lv != null && k.Lv != null) {
            if (this.Lu != k.Lu) {
                return false;
            }
            if (!this.Lu.Lm.isArray()) {
                return this.Lv.equals(k.Lv);
            }
            if (this.Lv instanceof byte[]) {
                return Arrays.equals((byte[])this.Lv, (byte[])k.Lv);
            }
            if (this.Lv instanceof int[]) {
                return Arrays.equals((int[])this.Lv, (int[])k.Lv);
            }
            if (this.Lv instanceof long[]) {
                return Arrays.equals((long[])this.Lv, (long[])k.Lv);
            }
            if (this.Lv instanceof float[]) {
                return Arrays.equals((float[])this.Lv, (float[])k.Lv);
            }
            if (this.Lv instanceof double[]) {
                return Arrays.equals((double[])this.Lv, (double[])k.Lv);
            }
            if (this.Lv instanceof boolean[]) {
                return Arrays.equals((boolean[])this.Lv, (boolean[])k.Lv);
            }
            return Arrays.deepEquals((Object[])this.Lv, (Object[])k.Lv);
        }
        else {
            if (this.Lt != null && k.Lt != null) {
                return this.Lt.equals(k.Lt);
            }
            try {
                final byte[] tp = this.Tp();
                try {
                    return Arrays.equals(tp, k.Tp());
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
            final byte[] tp = this.Tp();
            try {
                return Arrays.hashCode(tp) + 527;
            }
            catch (IOException ex) {
                throw new IllegalStateException(ex);
            }
        }
        catch (IOException ex2) {}
    }
    
    void writeTo(final b b) {
        if (this.Lv != null) {
            this.Lu.SX(this.Lv, b);
        }
        else {
            final Iterator iterator = this.Lt.iterator();
            while (iterator.hasNext()) {
                iterator.next().writeTo(b);
            }
        }
    }
}
