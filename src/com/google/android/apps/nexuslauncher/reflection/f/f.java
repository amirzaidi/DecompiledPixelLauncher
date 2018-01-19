// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.f;

import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class f extends a
{
    public long aF;
    public int[] aG;
    
    public f() {
        this.clear();
    }
    
    public f clear() {
        this.aF = 0L;
        this.aG = com.google.protobuf.nano.f.Ot;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final int n = 1;
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.aF != 0L) {
            computeSerializedSize += b.EV(n, this.aF);
        }
        if (this.aG != null && this.aG.length > 0) {
            int n2 = 0;
            while (i < this.aG.length) {
                n2 += b.EN(this.aG[i]);
                ++i;
            }
            computeSerializedSize = computeSerializedSize + n2 + this.aG.length * 1;
        }
        return computeSerializedSize;
    }
    
    public f mergeFrom(final c c) {
        while (true) {
            final int fo = c.FO();
            switch (fo) {
                default: {
                    if (!com.google.protobuf.nano.f.Gn(c, fo)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 8: {
                    this.aF = c.FV();
                    continue;
                }
                case 16: {
                    final int gj = com.google.protobuf.nano.f.Gj(c, 16);
                    final int[] ag = new int[gj];
                    int i = 0;
                    int n = 0;
                    while (i < gj) {
                        if (i != 0) {
                            c.FO();
                        }
                        final int ga = c.Ga();
                        int n2 = 0;
                        switch (ga) {
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
                                ag[n] = ga;
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
                    if (this.aG == null) {
                        length = 0;
                    }
                    else {
                        length = this.aG.length;
                    }
                    if (length == 0 && n == ag.length) {
                        this.aG = ag;
                        continue;
                    }
                    final int[] ag2 = new int[length + n];
                    if (length != 0) {
                        System.arraycopy(this.aG, 0, ag2, 0, length);
                    }
                    System.arraycopy(ag, 0, ag2, length, n);
                    this.aG = ag2;
                    continue;
                }
                case 18: {
                    final int fk = c.FK(c.FN());
                    final int fj = c.FJ();
                    int n3 = 0;
                    while (c.FM() > 0) {
                        switch (c.Ga()) {
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
                        c.Gc(fj);
                        int length2;
                        if (this.aG == null) {
                            length2 = 0;
                        }
                        else {
                            length2 = this.aG.length;
                        }
                        final int[] ag3 = new int[n3 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.aG, 0, ag3, 0, length2);
                        }
                        while (c.FM() > 0) {
                            final int ga2 = c.Ga();
                            switch (ga2) {
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
                                    ag3[length2] = ga2;
                                    length2 = n4;
                                    continue;
                                }
                            }
                        }
                        this.aG = ag3;
                    }
                    c.FH(fk);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        if (this.aF != 0L) {
            b.Fy(1, this.aF);
        }
        if (this.aG != null && this.aG.length > 0) {
            while (i < this.aG.length) {
                b.ER(2, this.aG[i]);
                ++i;
            }
        }
        super.writeTo(b);
    }
}
