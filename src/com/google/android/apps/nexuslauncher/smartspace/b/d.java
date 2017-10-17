// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace.b;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.a;

public final class d extends a
{
    public String cN;
    public e[] cO;
    public int cP;
    
    public d() {
        this.clear();
    }
    
    public d clear() {
        this.cN = "";
        this.cP = 0;
        this.cO = e.emptyArray();
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.cN.equals("")) {
            computeSerializedSize += b.VW(1, this.cN);
        }
        if (this.cP != 0) {
            computeSerializedSize += b.VA(2, this.cP);
        }
        if (this.cO != null && this.cO.length > 0) {
            int n = computeSerializedSize;
            for (int i = 0; i < this.cO.length; ++i) {
                final e e = this.cO[i];
                if (e != null) {
                    n += b.Vo(3, e);
                }
            }
            computeSerializedSize = n;
        }
        return computeSerializedSize;
    }
    
    public d mergeFrom(final c c) {
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
                case 10: {
                    this.cN = c.WB();
                    continue;
                }
                case 16: {
                    final int wf = c.WF();
                    switch (wf) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3: {
                            this.cP = wf;
                            continue;
                        }
                    }
                    break;
                }
                case 26: {
                    final int wn = f.WN(c, 26);
                    int i;
                    if (this.cO == null) {
                        i = 0;
                    }
                    else {
                        i = this.cO.length;
                    }
                    final e[] co = new e[wn + i];
                    if (i != 0) {
                        System.arraycopy(this.cO, 0, co, 0, i);
                    }
                    while (i < co.length - 1) {
                        c.Ww(co[i] = new e());
                        c.Ws();
                        ++i;
                    }
                    c.Ww(co[i] = new e());
                    this.cO = co;
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        if (!this.cN.equals("")) {
            b.VT(1, this.cN);
        }
        if (this.cP != 0) {
            b.Vv(2, this.cP);
        }
        if (this.cO != null && this.cO.length > 0) {
            while (i < this.cO.length) {
                final e e = this.cO[i];
                if (e != null) {
                    b.VK(3, e);
                }
                ++i;
            }
        }
        super.writeTo(b);
    }
}
