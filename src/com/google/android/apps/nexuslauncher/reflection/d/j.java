// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.a;

public final class j extends a
{
    public long aJ;
    public String aK;
    public m aL;
    public k aM;
    public String packageName;
    
    public j() {
        this.clear();
    }
    
    public static j ah(final c c) {
        return new j().mergeFrom(c);
    }
    
    public j clear() {
        this.aK = "";
        this.aJ = 0L;
        this.aM = null;
        this.aL = null;
        this.packageName = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.aK.equals("")) {
            computeSerializedSize += b.VW(1, this.aK);
        }
        if (this.aJ != 0L) {
            computeSerializedSize += b.Vz(2, this.aJ);
        }
        if (this.aM != null) {
            computeSerializedSize += b.Vo(3, this.aM);
        }
        if (this.aL != null) {
            computeSerializedSize += b.Vo(4, this.aL);
        }
        if (!this.packageName.equals("")) {
            computeSerializedSize += b.VW(5, this.packageName);
        }
        return computeSerializedSize;
    }
    
    public j mergeFrom(final c c) {
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
                    this.aK = c.WB();
                    continue;
                }
                case 16: {
                    this.aJ = c.Wz();
                    continue;
                }
                case 26: {
                    if (this.aM == null) {
                        this.aM = new k();
                    }
                    c.Ww(this.aM);
                    continue;
                }
                case 34: {
                    if (this.aL == null) {
                        this.aL = new m();
                    }
                    c.Ww(this.aL);
                    continue;
                }
                case 42: {
                    this.packageName = c.WB();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (!this.aK.equals("")) {
            b.VT(1, this.aK);
        }
        if (this.aJ != 0L) {
            b.Wc(2, this.aJ);
        }
        if (this.aM != null) {
            b.VK(3, this.aM);
        }
        if (this.aL != null) {
            b.VK(4, this.aL);
        }
        if (!this.packageName.equals("")) {
            b.VT(5, this.packageName);
        }
        super.writeTo(b);
    }
}
