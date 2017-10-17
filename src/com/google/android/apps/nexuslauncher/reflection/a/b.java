// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.google.protobuf.nano.c;
import com.google.protobuf.nano.f;
import com.google.protobuf.nano.a;

public final class b extends a
{
    public int[] aA;
    public long aB;
    
    public b() {
        this.clear();
    }
    
    public b clear() {
        this.aB = 0L;
        this.aA = f.Lh;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final int n = 1;
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.aB != 0L) {
            computeSerializedSize += com.google.protobuf.nano.b.RE(n, this.aB);
        }
        if (this.aA != null && this.aA.length > 0) {
            int n2 = 0;
            while (i < this.aA.length) {
                n2 += com.google.protobuf.nano.b.Rw(this.aA[i]);
                ++i;
            }
            computeSerializedSize = computeSerializedSize + n2 + this.aA.length * 1;
        }
        return computeSerializedSize;
    }
    
    public b mergeFrom(final c c) {
        while (true) {
            final int sx = c.Sx();
            switch (sx) {
                default: {
                    if (!f.SW(c, sx)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 8: {
                    this.aB = c.SE();
                    continue;
                }
                case 16: {
                    final int ss = f.SS(c, 16);
                    final int[] aa = new int[ss];
                    int i = 0;
                    int n = 0;
                    while (i < ss) {
                        if (i != 0) {
                            c.Sx();
                        }
                        final int sk = c.SK();
                        int n2 = 0;
                        switch (sk) {
                            default: {
                                n2 = n;
                                break;
                            }
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11: {
                                n2 = n + 1;
                                aa[n] = sk;
                                break;
                            }
                        }
                        ++i;
                        n = n2;
                    }
                    if (n == 0) {
                        continue;
                    }
                    int length;
                    if (this.aA == null) {
                        length = 0;
                    }
                    else {
                        length = this.aA.length;
                    }
                    if (length == 0 && n == aa.length) {
                        this.aA = aa;
                        continue;
                    }
                    final int[] aa2 = new int[length + n];
                    if (length != 0) {
                        System.arraycopy(this.aA, 0, aa2, 0, length);
                    }
                    System.arraycopy(aa, 0, aa2, length, n);
                    this.aA = aa2;
                    continue;
                }
                case 18: {
                    final int st = c.St(c.Sw());
                    final int ss2 = c.Ss();
                    int n3 = 0;
                    while (c.Sv() > 0) {
                        switch (c.SK()) {
                            default: {
                                continue;
                            }
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11: {
                                ++n3;
                                continue;
                            }
                        }
                    }
                    if (n3 != 0) {
                        c.SJ(ss2);
                        int length2;
                        if (this.aA == null) {
                            length2 = 0;
                        }
                        else {
                            length2 = this.aA.length;
                        }
                        final int[] aa3 = new int[n3 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.aA, 0, aa3, 0, length2);
                        }
                        while (c.Sv() > 0) {
                            final int sk2 = c.SK();
                            switch (sk2) {
                                default: {
                                    continue;
                                }
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                case 8:
                                case 9:
                                case 10:
                                case 11: {
                                    final int n4 = length2 + 1;
                                    aa3[length2] = sk2;
                                    length2 = n4;
                                    continue;
                                }
                            }
                        }
                        this.aA = aa3;
                    }
                    c.Sq(st);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final com.google.protobuf.nano.b b) {
        int i = 0;
        if (this.aB != 0L) {
            b.Sh(1, this.aB);
        }
        if (this.aA != null && this.aA.length > 0) {
            while (i < this.aA.length) {
                b.RA(2, this.aA[i]);
                ++i;
            }
        }
        super.writeTo(b);
    }
}
