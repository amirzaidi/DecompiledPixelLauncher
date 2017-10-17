// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.google.protobuf.nano.b;
import com.google.protobuf.nano.c;
import com.google.protobuf.nano.a;

public final class f extends a
{
    public String aO;
    public long aP;
    public g aQ;
    public i aR;
    public String packageName;
    
    public f() {
        this.clear();
    }
    
    public static f ap(final c c) {
        return new f().mergeFrom(c);
    }
    
    public f clear() {
        this.aO = "";
        this.aP = 0L;
        this.aQ = null;
        this.aR = null;
        this.packageName = "";
        this.cachedSize = -1;
        return this;
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.aO.equals("")) {
            computeSerializedSize += b.Sb(1, this.aO);
        }
        if (this.aP != 0L) {
            computeSerializedSize += b.RE(2, this.aP);
        }
        if (this.aQ != null) {
            computeSerializedSize += b.Rt(3, this.aQ);
        }
        if (this.aR != null) {
            computeSerializedSize += b.Rt(4, this.aR);
        }
        if (!this.packageName.equals("")) {
            computeSerializedSize += b.Sb(5, this.packageName);
        }
        return computeSerializedSize;
    }
    
    public f mergeFrom(final c c) {
        while (true) {
            final int sx = c.Sx();
            switch (sx) {
                default: {
                    if (!com.google.protobuf.nano.f.SW(c, sx)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 10: {
                    this.aO = c.SG();
                    continue;
                }
                case 16: {
                    this.aP = c.SE();
                    continue;
                }
                case 26: {
                    if (this.aQ == null) {
                        this.aQ = new g();
                    }
                    c.SB(this.aQ);
                    continue;
                }
                case 34: {
                    if (this.aR == null) {
                        this.aR = new i();
                    }
                    c.SB(this.aR);
                    continue;
                }
                case 42: {
                    this.packageName = c.SG();
                    continue;
                }
            }
        }
    }
    
    public void writeTo(final b b) {
        if (!this.aO.equals("")) {
            b.RY(1, this.aO);
        }
        if (this.aP != 0L) {
            b.Sh(2, this.aP);
        }
        if (this.aQ != null) {
            b.RP(3, this.aQ);
        }
        if (this.aR != null) {
            b.RP(4, this.aR);
        }
        if (!this.packageName.equals("")) {
            b.RY(5, this.packageName);
        }
        super.writeTo(b);
    }
}
