// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace.b;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.d;
import com.google.protobuf.nano.a;

public final class e extends a
{
    private static volatile e[] cT;
    public int cQ;
    public String cR;
    public int cS;
    public boolean cU;
    
    public e() {
        this.clear();
    }
    
    public static e[] emptyArray() {
        Label_0035: {
            if (e.cT != null) {
                break Label_0035;
            }
            synchronized (d.PH) {
                if (e.cT == null) {
                    e.cT = new e[0];
                }
                return e.cT;
            }
        }
    }
    
    public e clear() {
        this.cR = "";
        this.cS = 0;
        this.cQ = 0;
        this.cU = false;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.cR.equals("")) {
            computeSerializedSize += b.VW(1, this.cR);
        }
        if (this.cS != 0) {
            computeSerializedSize += b.VA(2, this.cS);
        }
        if (this.cQ != 0) {
            computeSerializedSize += b.VA(3, this.cQ);
        }
        if (this.cU) {
            computeSerializedSize += b.VL(4, this.cU);
        }
        return computeSerializedSize;
    }
    
    public e mergeFrom(final c c) {
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
                    this.cR = c.WB();
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
                            this.cS = wf;
                            continue;
                        }
                    }
                    break;
                }
                case 24: {
                    final int wf2 = c.WF();
                    switch (wf2) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3: {
                            this.cQ = wf2;
                            continue;
                        }
                    }
                    break;
                }
                case 32: {
                    this.cU = c.Wy();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (!this.cR.equals("")) {
            b.VT(1, this.cR);
        }
        if (this.cS != 0) {
            b.Vv(2, this.cS);
        }
        if (this.cQ != 0) {
            b.Vv(3, this.cQ);
        }
        if (this.cU) {
            b.VG(4, this.cU);
        }
        super.writeTo(b);
    }
}
