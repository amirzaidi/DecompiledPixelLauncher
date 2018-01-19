// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.f;

import com.google.protobuf.nano.f;
import com.google.protobuf.nano.b;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.a;

public final class j extends a
{
    public String aT;
    public long aU;
    public k aV;
    public m aW;
    public String packageName;
    
    public j() {
        this.clear();
    }
    
    public static j aF(final c c) {
        return new j().mergeFrom(c);
    }
    
    public j clear() {
        this.aT = "";
        this.aU = 0L;
        this.aV = null;
        this.aW = null;
        this.packageName = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.aT.equals("")) {
            computeSerializedSize += b.Fs(1, this.aT);
        }
        if (this.aU != 0L) {
            computeSerializedSize += b.EV(2, this.aU);
        }
        if (this.aV != null) {
            computeSerializedSize += b.EK(3, this.aV);
        }
        if (this.aW != null) {
            computeSerializedSize += b.EK(4, this.aW);
        }
        if (!this.packageName.equals("")) {
            computeSerializedSize += b.Fs(5, this.packageName);
        }
        return computeSerializedSize;
    }
    
    public j mergeFrom(final c c) {
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
                    this.aT = c.FX();
                    continue;
                }
                case 16: {
                    this.aU = c.FV();
                    continue;
                }
                case 26: {
                    if (this.aV == null) {
                        this.aV = new k();
                    }
                    c.FS(this.aV);
                    continue;
                }
                case 34: {
                    if (this.aW == null) {
                        this.aW = new m();
                    }
                    c.FS(this.aW);
                    continue;
                }
                case 42: {
                    this.packageName = c.FX();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (!this.aT.equals("")) {
            b.Fp(1, this.aT);
        }
        if (this.aU != 0L) {
            b.Fy(2, this.aU);
        }
        if (this.aV != null) {
            b.Fg(3, this.aV);
        }
        if (this.aW != null) {
            b.Fg(4, this.aW);
        }
        if (!this.packageName.equals("")) {
            b.Fp(5, this.packageName);
        }
        super.writeTo(b);
    }
}
