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
    public e[] dE;
    public String dF;
    public int dG;
    
    public d() {
        this.clear();
    }
    
    public d clear() {
        this.dF = "";
        this.dG = 0;
        this.dE = e.emptyArray();
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.dF.equals("")) {
            computeSerializedSize += b.Fs(1, this.dF);
        }
        if (this.dG != 0) {
            computeSerializedSize += b.EW(2, this.dG);
        }
        if (this.dE != null && this.dE.length > 0) {
            int n = computeSerializedSize;
            for (int i = 0; i < this.dE.length; ++i) {
                final e e = this.dE[i];
                if (e != null) {
                    n += b.EK(3, e);
                }
            }
            computeSerializedSize = n;
        }
        return computeSerializedSize;
    }
    
    public d mergeFrom(final c c) {
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
                    this.dF = c.FX();
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
                            this.dG = ga;
                            continue;
                        }
                    }
                    break;
                }
                case 26: {
                    final int gj = f.Gj(c, 26);
                    int i;
                    if (this.dE == null) {
                        i = 0;
                    }
                    else {
                        i = this.dE.length;
                    }
                    final e[] de = new e[gj + i];
                    if (i != 0) {
                        System.arraycopy(this.dE, 0, de, 0, i);
                    }
                    while (i < de.length - 1) {
                        c.FS(de[i] = new e());
                        c.FO();
                        ++i;
                    }
                    c.FS(de[i] = new e());
                    this.dE = de;
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        int i = 0;
        if (!this.dF.equals("")) {
            b.Fp(1, this.dF);
        }
        if (this.dG != 0) {
            b.ER(2, this.dG);
        }
        if (this.dE != null && this.dE.length > 0) {
            while (i < this.dE.length) {
                final e e = this.dE[i];
                if (e != null) {
                    b.Fg(3, e);
                }
                ++i;
            }
        }
        super.writeTo(b);
    }
}
