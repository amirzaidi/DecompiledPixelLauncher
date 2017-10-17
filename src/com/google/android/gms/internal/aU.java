// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

public final class au extends aU implements Cloneable
{
    public int ss;
    
    public au() {
        this.uC();
    }
    
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (this.ss != -1) {
            computeSerializedSize += aP.wm(1, this.ss);
        }
        return computeSerializedSize;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        boolean b2 = false;
        if (o == this) {
            return b;
        }
        if (!(o instanceof au)) {
            return false;
        }
        final au au = (au)o;
        if (this.ss != au.ss) {
            return false;
        }
        if (this.tz != null && !this.tz.isEmpty()) {
            return this.tz.equals(au.tz);
        }
        if (au.tz == null || au.tz.isEmpty()) {
            b2 = b;
        }
        return b2;
    }
    
    public int hashCode() {
        int hashCode = 0;
        final int n = ((this.getClass().getName().hashCode() + 527) * 31 + this.ss) * 31;
        if (this.tz != null && !this.tz.isEmpty()) {
            hashCode = this.tz.hashCode();
        }
        return hashCode + n;
    }
    
    public void sc(final aP ap) {
        if (this.ss != -1) {
            ap.vW(1, this.ss);
        }
        super.sc(ap);
    }
    
    public au uC() {
        final int n = -1;
        this.ss = n;
        this.tz = null;
        this.sH = n;
        return this;
    }
    
    public au uD(final aY ay) {
        while (true) {
            final int xf = ay.xF();
            switch (xf) {
                default: {
                    if (!super.xs(ay, xf)) {
                        return this;
                    }
                    continue;
                }
                case 0: {
                    return this;
                }
                case 8: {
                    final int xe = ay.xE();
                    switch (xe) {
                        default: {
                            continue;
                        }
                        case -1:
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
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17: {
                            this.ss = xe;
                            continue;
                        }
                    }
                    break;
                }
            }
        }
    }
    
    public au uE() {
        try {
            final aU sg = super.sg();
            try {
                return (au)sg;
            }
            catch (CloneNotSupportedException ex) {
                throw new AssertionError((Object)ex);
            }
        }
        catch (CloneNotSupportedException ex2) {}
    }
}
