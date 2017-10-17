// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.util.Arrays;

public final class z extends aC
{
    private static volatile z[] ps;
    public String pr;
    public String pt;
    public byte[] pu;
    
    public z() {
        this.sG();
    }
    
    public static z[] sH() {
        if (z.ps == null) {
            while (true) {
                while (true) {
                    synchronized (aR.ts) {
                        if (z.ps != null) {
                            break;
                        }
                    }
                    z.ps = new z[0];
                    continue;
                }
            }
        }
        return z.ps;
    }
    
    public static z sJ(final byte[] array) {
        return (z)aC.uU(new z(), array);
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.pr.equals("")) {
            computeSerializedSize += aP.wk(1, this.pr);
        }
        if (!this.pt.equals("")) {
            computeSerializedSize += aP.wk(2, this.pt);
        }
        if (!Arrays.equals(this.pu, aH.sW)) {
            computeSerializedSize += aP.wL(3, this.pu);
        }
        return computeSerializedSize;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        if (o == this) {
            return b;
        }
        if (o instanceof z) {
            final z z = (z)o;
            if (this.pr != null) {
                if (!this.pr.equals(z.pr)) {
                    return false;
                }
            }
            else if (z.pr != null) {
                return false;
            }
            if (this.pt != null) {
                if (!this.pt.equals(z.pt)) {
                    return false;
                }
            }
            else if (z.pt != null) {
                return false;
            }
            return Arrays.equals(this.pu, z.pu) && b;
        }
        return false;
    }
    
    public int hashCode() {
        int hashCode = 0;
        final int n = (this.getClass().getName().hashCode() + 527) * 31;
        int hashCode2;
        if (this.pr != null) {
            hashCode2 = this.pr.hashCode();
        }
        else {
            hashCode2 = 0;
        }
        final int n2 = (hashCode2 + n) * 31;
        if (this.pt != null) {
            hashCode = this.pt.hashCode();
        }
        return (n2 + hashCode) * 31 + Arrays.hashCode(this.pu);
    }
    
    public z sG() {
        this.pr = "";
        this.pt = "";
        this.pu = aH.sW;
        this.sH = -1;
        return this;
    }
    
    public z sI(final aY ay) {
        while (true) {
            final int xf = ay.xF();
            switch (xf) {
                default: {
                    if (!aH.vm(ay, xf)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 10: {
                    this.pr = ay.xZ();
                    continue;
                }
                case 18: {
                    this.pt = ay.xZ();
                    continue;
                }
                case 26: {
                    this.pu = ay.xO();
                    continue;
                }
            }
        }
    }
    
    public void sc(final aP ap) {
        if (!this.pr.equals("")) {
            ap.vT(1, this.pr);
        }
        if (!this.pt.equals("")) {
            ap.vT(2, this.pt);
        }
        if (!Arrays.equals(this.pu, aH.sW)) {
            ap.wy(3, this.pu);
        }
        super.sc(ap);
    }
}
