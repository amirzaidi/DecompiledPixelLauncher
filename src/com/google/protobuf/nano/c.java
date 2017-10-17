// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

public final class c
{
    private int PA;
    private int PB;
    private int PC;
    private final byte[] PD;
    private int PE;
    private int Pv;
    private int Pw;
    private int Px;
    private int Py;
    private int Pz;
    
    private c(final byte[] pd, final int n, final int n2) {
        this.Py = -1 >>> 1;
        this.PC = 64;
        this.Pv = 67108864;
        this.PD = pd;
        this.Pz = n;
        this.Px = n + n2;
        this.Pw = n;
    }
    
    public static c WC(final byte[] array, final int n, final int n2) {
        return new c(array, n, n2);
    }
    
    private void Wx() {
        this.Px += this.PA;
        final int px = this.Px;
        if (px > this.Py) {
            this.PA = px - this.Py;
            this.Px -= this.PA;
        }
        else {
            this.PA = 0;
        }
    }
    
    public byte WA() {
        if (this.Pw == this.Px) {
            throw InvalidProtocolBufferNanoException.Wg();
        }
        return this.PD[this.Pw++];
    }
    
    public String WB() {
        final int wr = this.Wr();
        if (wr <= this.Px - this.Pw && wr > 0) {
            final String s = new String(this.PD, this.Pw, wr, d.PF);
            this.Pw += wr;
            return s;
        }
        return new String(this.WG(wr), d.PF);
    }
    
    public void WD(final int n) {
        if (n < 0) {
            throw InvalidProtocolBufferNanoException.Wf();
        }
        if (this.Pw + n > this.Py) {
            this.WD(this.Py - this.Pw);
            throw InvalidProtocolBufferNanoException.Wg();
        }
        if (n <= this.Px - this.Pw) {
            this.Pw += n;
            return;
        }
        throw InvalidProtocolBufferNanoException.Wg();
    }
    
    public void WE(final int n) {
        if (n > this.Pw - this.Pz) {
            throw new IllegalArgumentException("Position " + n + " is beyond current " + (this.Pw - this.Pz));
        }
        if (n < 0) {
            throw new IllegalArgumentException("Bad position " + n);
        }
        this.Pw = this.Pz + n;
    }
    
    public int WF() {
        return this.Wr();
    }
    
    public byte[] WG(final int n) {
        if (n < 0) {
            throw InvalidProtocolBufferNanoException.Wf();
        }
        if (this.Pw + n > this.Py) {
            this.WD(this.Py - this.Pw);
            throw InvalidProtocolBufferNanoException.Wg();
        }
        if (n <= this.Px - this.Pw) {
            final byte[] array = new byte[n];
            System.arraycopy(this.PD, this.Pw, array, 0, n);
            this.Pw += n;
            return array;
        }
        throw InvalidProtocolBufferNanoException.Wg();
    }
    
    public float WH() {
        return Float.intBitsToFloat(this.Wt());
    }
    
    public long WI() {
        final long n = 255L;
        return (this.WA() & n) << 8 | (this.WA() & n) | (this.WA() & n) << 16 | (this.WA() & n) << 24 | (this.WA() & n) << 32 | (this.WA() & n) << 40 | (this.WA() & n) << 48 | (this.WA() & n) << 56;
    }
    
    public void WJ() {
        int ws;
        do {
            ws = this.Ws();
        } while (ws != 0 && !(this.WL(ws) ^ true));
    }
    
    public void WK(final int n) {
        if (this.PB != n) {
            throw InvalidProtocolBufferNanoException.Wk();
        }
    }
    
    public boolean WL(final int n) {
        final boolean b = true;
        switch (f.WP(n)) {
            default: {
                throw InvalidProtocolBufferNanoException.We();
            }
            case 0: {
                this.WF();
                return b;
            }
            case 1: {
                this.WI();
                return b;
            }
            case 2: {
                this.WD(this.Wr());
                return b;
            }
            case 3: {
                this.WJ();
                this.WK(f.WQ(f.WO(n), 4));
                return b;
            }
            case 4: {
                return false;
            }
            case 5: {
                this.Wt();
                return b;
            }
        }
    }
    
    public void Wl(final int py) {
        this.Py = py;
        this.Wx();
    }
    
    public boolean Wm() {
        return this.Pw == this.Px;
    }
    
    public int Wn() {
        return this.Pw - this.Pz;
    }
    
    public int Wo(final int n) {
        if (n < 0) {
            throw InvalidProtocolBufferNanoException.Wf();
        }
        final int py = this.Pw + n;
        final int py2 = this.Py;
        if (py > py2) {
            throw InvalidProtocolBufferNanoException.Wg();
        }
        this.Py = py;
        this.Wx();
        return py2;
    }
    
    public byte[] Wp() {
        final int wr = this.Wr();
        if (wr <= this.Px - this.Pw && wr > 0) {
            final byte[] array = new byte[wr];
            System.arraycopy(this.PD, this.Pw, array, 0, wr);
            this.Pw += wr;
            return array;
        }
        if (wr == 0) {
            return f.PP;
        }
        return this.WG(wr);
    }
    
    public int Wq() {
        if (this.Py == -1 >>> 1) {
            return -1;
        }
        return this.Py - this.Pw;
    }
    
    public int Wr() {
        int i = 0;
        final byte wa = this.WA();
        if (wa >= 0) {
            return wa;
        }
        final byte b = (byte)(wa & 0x7F);
        final byte wa2 = this.WA();
        int n;
        if (wa2 >= 0) {
            n = (b | wa2 << 7);
        }
        else {
            final int n2 = b | (wa2 & 0x7F) << 7;
            final byte wa3 = this.WA();
            if (wa3 >= 0) {
                n = (n2 | wa3 << 14);
            }
            else {
                final int n3 = n2 | (wa3 & 0x7F) << 14;
                final byte wa4 = this.WA();
                if (wa4 >= 0) {
                    n = (n3 | wa4 << 21);
                }
                else {
                    final int n4 = n3 | (wa4 & 0x7F) << 21;
                    final byte wa5 = this.WA();
                    n = (n4 | wa5 << 28);
                    if (wa5 < 0) {
                        while (i < 5) {
                            if (this.WA() >= 0) {
                                return n;
                            }
                            ++i;
                        }
                        throw InvalidProtocolBufferNanoException.Wi();
                    }
                }
            }
        }
        return n;
    }
    
    public int Ws() {
        if (this.Wm()) {
            return this.PB = 0;
        }
        this.PB = this.Wr();
        if (this.PB == 0) {
            throw InvalidProtocolBufferNanoException.Wj();
        }
        return this.PB;
    }
    
    public int Wt() {
        return (this.WA() & 0xFF) | (this.WA() & 0xFF) << 8 | (this.WA() & 0xFF) << 16 | (this.WA() & 0xFF) << 24;
    }
    
    public long Wu() {
        int i = 0;
        long n = 0L;
        while (i < 64) {
            final byte wa = this.WA();
            n |= (wa & 0x7F) << i;
            if ((wa & 0x80) == 0x0) {
                return n;
            }
            i += 7;
        }
        throw InvalidProtocolBufferNanoException.Wi();
    }
    
    public double Wv() {
        return Double.longBitsToDouble(this.WI());
    }
    
    public void Ww(final a a) {
        final int wr = this.Wr();
        if (this.PE >= this.PC) {
            throw InvalidProtocolBufferNanoException.Wh();
        }
        final int wo = this.Wo(wr);
        ++this.PE;
        a.mergeFrom(this);
        this.WK(0);
        --this.PE;
        this.Wl(wo);
    }
    
    public boolean Wy() {
        boolean b = false;
        if (this.Wr() != 0) {
            b = true;
        }
        return b;
    }
    
    public long Wz() {
        return this.Wu();
    }
}
