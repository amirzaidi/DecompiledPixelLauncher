// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class f extends a
{
    public long av;
    public int[] aw;
    
    public f() {
        this.clear();
    }
    
    public f clear() {
        this.av = 0L;
        this.aw = com.google.protobuf.nano.f.PO;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        final int n = 1;
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.av != 0L) {
            computeSerializedSize += b.Vz(n, this.av);
        }
        if (this.aw != null && this.aw.length > 0) {
            int n2 = 0;
            while (i < this.aw.length) {
                n2 += b.Vr(this.aw[i]);
                ++i;
            }
            computeSerializedSize = computeSerializedSize + n2 + this.aw.length * 1;
        }
        return computeSerializedSize;
    }
    
    public f mergeFrom(final c c) {
        while (true) {
            final int ws = c.Ws();
            switch (ws) {
                default: {
                    if (!com.google.protobuf.nano.f.WR(c, ws)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 8: {
                    this.av = c.Wz();
                    continue;
                }
                case 16: {
                    final int wn = com.google.protobuf.nano.f.WN(c, 16);
                    final int[] aw = new int[wn];
                    int i = 0;
                    int n = 0;
                    while (i < wn) {
                        if (i != 0) {
                            c.Ws();
                        }
                        final int wf = c.WF();
                        int n2 = 0;
                        switch (wf) {
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
                                aw[n] = wf;
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
                    if (this.aw == null) {
                        length = 0;
                    }
                    else {
                        length = this.aw.length;
                    }
                    if (length == 0 && n == aw.length) {
                        this.aw = aw;
                        continue;
                    }
                    final int[] aw2 = new int[length + n];
                    if (length != 0) {
                        System.arraycopy(this.aw, 0, aw2, 0, length);
                    }
                    System.arraycopy(aw, 0, aw2, length, n);
                    this.aw = aw2;
                    continue;
                }
                case 18: {
                    final int wo = c.Wo(c.Wr());
                    final int wn2 = c.Wn();
                    int n3 = 0;
                    while (c.Wq() > 0) {
                        switch (c.WF()) {
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
                        c.WE(wn2);
                        int length2;
                        if (this.aw == null) {
                            length2 = 0;
                        }
                        else {
                            length2 = this.aw.length;
                        }
                        final int[] aw3 = new int[n3 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.aw, 0, aw3, 0, length2);
                        }
                        while (c.Wq() > 0) {
                            final int wf2 = c.WF();
                            switch (wf2) {
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
                                    aw3[length2] = wf2;
                                    length2 = n4;
                                    continue;
                                }
                            }
                        }
                        this.aw = aw3;
                    }
                    c.Wl(wo);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        if (this.av != 0L) {
            b.Wc(1, this.av);
        }
        if (this.aw != null && this.aw.length > 0) {
            while (i < this.aw.length) {
                b.Vv(2, this.aw[i]);
                ++i;
            }
        }
        super.writeTo(b);
    }
}
