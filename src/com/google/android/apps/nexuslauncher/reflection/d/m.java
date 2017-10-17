// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class m extends a
{
    public l[] aU;
    public l[] aV;
    public n aW;
    public int aX;
    public l[] aY;
    public l[] aZ;
    public l[] ba;
    
    public m() {
        this.clear();
    }
    
    public m clear() {
        this.aX = 0;
        this.ba = l.emptyArray();
        this.aV = l.emptyArray();
        this.aZ = l.emptyArray();
        this.aU = l.emptyArray();
        this.aY = l.emptyArray();
        this.aW = null;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int i = 0;
        int computeSerializedSize = super.computeSerializedSize();
        if (this.aX != 0) {
            computeSerializedSize += b.VA(1, this.aX);
        }
        if (this.ba != null && this.ba.length > 0) {
            int n = computeSerializedSize;
            for (int j = 0; j < this.ba.length; ++j) {
                final l l = this.ba[j];
                if (l != null) {
                    n += b.Vo(2, l);
                }
            }
            computeSerializedSize = n;
        }
        if (this.aV != null && this.aV.length > 0) {
            int n2 = computeSerializedSize;
            for (int k = 0; k < this.aV.length; ++k) {
                final l m = this.aV[k];
                if (m != null) {
                    n2 += b.Vo(3, m);
                }
            }
            computeSerializedSize = n2;
        }
        if (this.aZ != null && this.aZ.length > 0) {
            int n3 = computeSerializedSize;
            for (int n4 = 0; n4 < this.aZ.length; ++n4) {
                final l l2 = this.aZ[n4];
                if (l2 != null) {
                    n3 += b.Vo(4, l2);
                }
            }
            computeSerializedSize = n3;
        }
        if (this.aU != null && this.aU.length > 0) {
            int n5 = computeSerializedSize;
            for (int n6 = 0; n6 < this.aU.length; ++n6) {
                final l l3 = this.aU[n6];
                if (l3 != null) {
                    n5 += b.Vo(5, l3);
                }
            }
            computeSerializedSize = n5;
        }
        if (this.aY != null && this.aY.length > 0) {
            while (i < this.aY.length) {
                final l l4 = this.aY[i];
                if (l4 != null) {
                    computeSerializedSize += b.Vo(6, l4);
                }
                ++i;
            }
        }
        if (this.aW != null) {
            computeSerializedSize += b.Vo(7, this.aW);
        }
        return computeSerializedSize;
    }
    
    public m mergeFrom(final c c) {
        while (true) {
            final int ws = c.Ws();
            switch (ws) {
                default: {
                    if (!f.WR(c, ws)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 8: {
                    this.aX = c.WF();
                    continue;
                }
                case 18: {
                    final int wn = f.WN(c, 18);
                    int i;
                    if (this.ba == null) {
                        i = 0;
                    }
                    else {
                        i = this.ba.length;
                    }
                    final l[] ba = new l[wn + i];
                    if (i != 0) {
                        System.arraycopy(this.ba, 0, ba, 0, i);
                    }
                    while (i < ba.length - 1) {
                        c.Ww(ba[i] = new l());
                        c.Ws();
                        ++i;
                    }
                    c.Ww(ba[i] = new l());
                    this.ba = ba;
                    continue;
                }
                case 26: {
                    final int wn2 = f.WN(c, 26);
                    int j;
                    if (this.aV == null) {
                        j = 0;
                    }
                    else {
                        j = this.aV.length;
                    }
                    final l[] av = new l[wn2 + j];
                    if (j != 0) {
                        System.arraycopy(this.aV, 0, av, 0, j);
                    }
                    while (j < av.length - 1) {
                        c.Ww(av[j] = new l());
                        c.Ws();
                        ++j;
                    }
                    c.Ww(av[j] = new l());
                    this.aV = av;
                    continue;
                }
                case 34: {
                    final int wn3 = f.WN(c, 34);
                    int k;
                    if (this.aZ == null) {
                        k = 0;
                    }
                    else {
                        k = this.aZ.length;
                    }
                    final l[] az = new l[wn3 + k];
                    if (k != 0) {
                        System.arraycopy(this.aZ, 0, az, 0, k);
                    }
                    while (k < az.length - 1) {
                        c.Ww(az[k] = new l());
                        c.Ws();
                        ++k;
                    }
                    c.Ww(az[k] = new l());
                    this.aZ = az;
                    continue;
                }
                case 42: {
                    final int wn4 = f.WN(c, 42);
                    int l;
                    if (this.aU == null) {
                        l = 0;
                    }
                    else {
                        l = this.aU.length;
                    }
                    final l[] au = new l[wn4 + l];
                    if (l != 0) {
                        System.arraycopy(this.aU, 0, au, 0, l);
                    }
                    while (l < au.length - 1) {
                        c.Ww(au[l] = new l());
                        c.Ws();
                        ++l;
                    }
                    c.Ww(au[l] = new l());
                    this.aU = au;
                    continue;
                }
                case 50: {
                    final int wn5 = f.WN(c, 50);
                    int length;
                    if (this.aY == null) {
                        length = 0;
                    }
                    else {
                        length = this.aY.length;
                    }
                    final l[] ay = new l[wn5 + length];
                    if (length != 0) {
                        System.arraycopy(this.aY, 0, ay, 0, length);
                    }
                    while (length < ay.length - 1) {
                        c.Ww(ay[length] = new l());
                        c.Ws();
                        ++length;
                    }
                    c.Ww(ay[length] = new l());
                    this.aY = ay;
                    continue;
                }
                case 58: {
                    if (this.aW == null) {
                        this.aW = new n();
                    }
                    c.Ww(this.aW);
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        if (this.aX != 0) {
            b.Vv(1, this.aX);
        }
        if (this.ba != null && this.ba.length > 0) {
            for (int j = 0; j < this.ba.length; ++j) {
                final l l = this.ba[j];
                if (l != null) {
                    b.VK(2, l);
                }
            }
        }
        if (this.aV != null && this.aV.length > 0) {
            for (int k = 0; k < this.aV.length; ++k) {
                final l m = this.aV[k];
                if (m != null) {
                    b.VK(3, m);
                }
            }
        }
        if (this.aZ != null && this.aZ.length > 0) {
            for (int n = 0; n < this.aZ.length; ++n) {
                final l l2 = this.aZ[n];
                if (l2 != null) {
                    b.VK(4, l2);
                }
            }
        }
        if (this.aU != null && this.aU.length > 0) {
            for (int n2 = 0; n2 < this.aU.length; ++n2) {
                final l l3 = this.aU[n2];
                if (l3 != null) {
                    b.VK(5, l3);
                }
            }
        }
        if (this.aY != null && this.aY.length > 0) {
            while (i < this.aY.length) {
                final l l4 = this.aY[i];
                if (l4 != null) {
                    b.VK(6, l4);
                }
                ++i;
            }
        }
        if (this.aW != null) {
            b.VK(7, this.aW);
        }
        super.writeTo(b);
    }
}
