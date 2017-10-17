// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

public final class be
{
    private int tA;
    private int tB;
    private int tC;
    private int tD;
    private final byte[] tE;
    private int tF;
    private int tG;
    private int tx;
    private int ty;
    private int tz;
    
    private be(final byte[] te, final int n, final int n2) {
        this.tA = -1 >>> 1;
        this.tC = 64;
        this.tB = 67108864;
        this.tE = te;
        this.tD = n;
        this.tG = n + n2;
        this.ty = n;
    }
    
    public static long xH(final long n) {
        return n >>> 1 ^ -(0x1L & n);
    }
    
    public static be xR(final byte[] array, final int n, final int n2) {
        return new be(array, n, n2);
    }
    
    private void xW() {
        this.tG += this.tF;
        final int tg = this.tG;
        if (tg <= this.tA) {
            this.tF = 0;
        }
        else {
            this.tF = tg - this.tA;
            this.tG -= this.tF;
        }
    }
    
    public int xF() {
        return this.yc();
    }
    
    public int xG() {
        if (this.yh()) {
            return this.tx = 0;
        }
        this.tx = this.yc();
        if (this.tx != 0) {
            return this.tx;
        }
        throw zzaxw.xx();
    }
    
    public byte[] xI(final int n, final int n2) {
        if (n2 != 0) {
            final byte[] array = new byte[n2];
            System.arraycopy(this.tE, this.tD + n, array, 0, n2);
            return array;
        }
        return aN.sQ;
    }
    
    public long xJ() {
        return xH(this.xM());
    }
    
    public int xK() {
        if (this.tA != -1 >>> 1) {
            return this.tA - this.ty;
        }
        return -1;
    }
    
    public int xL() {
        return this.ty - this.tD;
    }
    
    public long xM() {
        int i = 0;
        long n = 0L;
        while (i < 64) {
            final byte ye = this.ye();
            n |= (ye & 0x7F) << i;
            if ((ye & 0x80) == 0x0) {
                return n;
            }
            i += 7;
        }
        throw zzaxw.xA();
    }
    
    public long xN() {
        final long n = 255L;
        return (this.ye() & n) << 8 | (this.ye() & n) | (this.ye() & n) << 16 | (this.ye() & n) << 24 | (this.ye() & n) << 32 | (this.ye() & n) << 40 | (this.ye() & n) << 48 | (this.ye() & n) << 56;
    }
    
    public boolean xO() {
        boolean b = false;
        if (this.yc() != 0) {
            b = true;
        }
        return b;
    }
    
    public byte[] xP() {
        final int yc = this.yc();
        if (yc < 0) {
            throw zzaxw.xu();
        }
        if (yc == 0) {
            return aN.sQ;
        }
        if (yc <= this.tG - this.ty) {
            final byte[] array = new byte[yc];
            System.arraycopy(this.tE, this.ty, array, 0, yc);
            this.ty += yc;
            return array;
        }
        throw zzaxw.xz();
    }
    
    public void xQ(final aI ai) {
        final int yc = this.yc();
        if (this.tz < this.tC) {
            final int yf = this.yf(yc);
            ++this.tz;
            ai.sc(this);
            this.xU(0);
            --this.tz;
            this.xT(yf);
            return;
        }
        throw zzaxw.xw();
    }
    
    public double xS() {
        return Double.longBitsToDouble(this.xN());
    }
    
    public void xT(final int ta) {
        this.tA = ta;
        this.xW();
    }
    
    public void xU(final int n) {
        if (this.tx == n) {
            return;
        }
        throw zzaxw.xv();
    }
    
    public boolean xV(final int n) {
        final boolean b = true;
        switch (aN.vm(n)) {
            default: {
                throw zzaxw.xy();
            }
            case 0: {
                this.xF();
                return b;
            }
            case 1: {
                this.xN();
                return b;
            }
            case 2: {
                this.xY(this.yc());
                return b;
            }
            case 3: {
                this.yg();
                this.xU(aN.vj(aN.vl(n), 4));
                return b;
            }
            case 4: {
                return false;
            }
            case 5: {
                this.yb();
                return b;
            }
        }
    }
    
    public long xX() {
        return this.xM();
    }
    
    public void xY(final int n) {
        if (n < 0) {
            throw zzaxw.xu();
        }
        if (this.ty + n > this.tA) {
            this.xY(this.tA - this.ty);
            throw zzaxw.xz();
        }
        if (n > this.tG - this.ty) {
            throw zzaxw.xz();
        }
        this.ty += n;
    }
    
    public void xZ(final int n) {
        if (n > this.ty - this.tD) {
            throw new IllegalArgumentException(new StringBuilder(50).append("Position ").append(n).append(" is beyond current ").append(this.ty - this.tD).toString());
        }
        if (n >= 0) {
            this.ty = this.tD + n;
            return;
        }
        throw new IllegalArgumentException(new StringBuilder(24).append("Bad position ").append(n).toString());
    }
    
    public String ya() {
        final int yc = this.yc();
        if (yc < 0) {
            throw zzaxw.xu();
        }
        if (yc <= this.tG - this.ty) {
            final String s = new String(this.tE, this.ty, yc, aX.tl);
            this.ty += yc;
            return s;
        }
        throw zzaxw.xz();
    }
    
    public int yb() {
        return (this.ye() & 0xFF) | (this.ye() & 0xFF) << 8 | (this.ye() & 0xFF) << 16 | (this.ye() & 0xFF) << 24;
    }
    
    public int yc() {
        int i = 0;
        final byte ye = this.ye();
        if (ye < 0) {
            final byte b = (byte)(ye & 0x7F);
            final byte ye2 = this.ye();
            int n4;
            if (ye2 < 0) {
                final int n = b | (ye2 & 0x7F) << 7;
                final byte ye3 = this.ye();
                if (ye3 < 0) {
                    final int n2 = n | (ye3 & 0x7F) << 14;
                    final byte ye4 = this.ye();
                    if (ye4 < 0) {
                        final int n3 = n2 | (ye4 & 0x7F) << 21;
                        final byte ye5 = this.ye();
                        n4 = (n3 | ye5 << 28);
                        if (ye5 < 0) {
                            while (i < 5) {
                                if (this.ye() >= 0) {
                                    return n4;
                                }
                                ++i;
                            }
                            throw zzaxw.xA();
                        }
                    }
                    else {
                        n4 = (n2 | ye4 << 21);
                    }
                }
                else {
                    n4 = (n | ye3 << 14);
                }
            }
            else {
                n4 = (b | ye2 << 7);
            }
            return n4;
        }
        return ye;
    }
    
    public float yd() {
        return Float.intBitsToFloat(this.yb());
    }
    
    public byte ye() {
        if (this.ty != this.tG) {
            return this.tE[this.ty++];
        }
        throw zzaxw.xz();
    }
    
    public int yf(final int n) {
        if (n < 0) {
            throw zzaxw.xu();
        }
        final int ta = this.ty + n;
        final int ta2 = this.tA;
        if (ta <= ta2) {
            this.tA = ta;
            this.xW();
            return ta2;
        }
        throw zzaxw.xz();
    }
    
    public void yg() {
        int xg;
        do {
            xg = this.xG();
        } while (xg != 0 && this.xV(xg));
    }
    
    public boolean yh() {
        return this.ty == this.tG;
    }
}
