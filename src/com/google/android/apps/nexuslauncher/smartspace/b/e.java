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
    private static volatile e[] dH;
    public int dI;
    public String dJ;
    public int dK;
    public boolean dL;
    
    public e() {
        this.clear();
    }
    
    public static e[] emptyArray() {
        Label_0035: {
            if (e.dH != null) {
                break Label_0035;
            }
            synchronized (d.Om) {
                if (e.dH == null) {
                    e.dH = new e[0];
                }
                return e.dH;
            }
        }
    }
    
    public e clear() {
        this.dJ = "";
        this.dK = 0;
        this.dI = 0;
        this.dL = false;
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.dJ.equals("")) {
            computeSerializedSize += b.Fs(1, this.dJ);
        }
        if (this.dK != 0) {
            computeSerializedSize += b.EW(2, this.dK);
        }
        if (this.dI != 0) {
            computeSerializedSize += b.EW(3, this.dI);
        }
        if (this.dL) {
            computeSerializedSize += b.Fh(4, this.dL);
        }
        return computeSerializedSize;
    }
    
    public e mergeFrom(final c c) {
        while (true) {
            final int fo = c.FO();
            switch (fo) {
                default: {
                    if (!f.Gn(c, fo)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 10: {
                    this.dJ = c.FX();
                    continue;
                }
                case 16: {
                    final int ga = c.Ga();
                    switch (ga) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3: {
                            this.dK = ga;
                            continue;
                        }
                    }
                    break;
                }
                case 24: {
                    final int ga2 = c.Ga();
                    switch (ga2) {
                        default: {
                            continue;
                        }
                        case 0:
                        case 1:
                        case 2:
                        case 3: {
                            this.dI = ga2;
                            continue;
                        }
                    }
                    break;
                }
                case 32: {
                    this.dL = c.FU();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (!this.dJ.equals("")) {
            b.Fp(1, this.dJ);
        }
        if (this.dK != 0) {
            b.ER(2, this.dK);
        }
        if (this.dI != 0) {
            b.ER(3, this.dI);
        }
        if (this.dL) {
            b.Fc(4, this.dL);
        }
        super.writeTo(b);
    }
}
