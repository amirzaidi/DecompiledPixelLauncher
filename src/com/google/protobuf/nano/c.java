// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

public final class c
{
    private int KO;
    private int KP;
    private int KQ;
    private int KR;
    private int KS;
    private int KT;
    private int KU;
    private int KV;
    private final byte[] KW;
    private int KX;
    
    private c(final byte[] kw, final int n, final int n2) {
        this.KR = -1 >>> 1;
        this.KV = 64;
        this.KO = 67108864;
        this.KW = kw;
        this.KS = n;
        this.KQ = n + n2;
        this.KP = n;
    }
    
    private void SC() {
        this.KQ += this.KT;
        final int kq = this.KQ;
        if (kq > this.KR) {
            this.KT = kq - this.KR;
            this.KQ -= this.KT;
        }
        else {
            this.KT = 0;
        }
    }
    
    public static c SH(final byte[] array, final int n, final int n2) {
        return new c(array, n, n2);
    }
    
    public double SA() {
        return Double.longBitsToDouble(this.SN());
    }
    
    public void SB(final a a) {
        final int sw = this.Sw();
        if (this.KX >= this.KV) {
            throw InvalidProtocolBufferNanoException.Sm();
        }
        final int st = this.St(sw);
        ++this.KX;
        a.mergeFrom(this);
        this.SP(0);
        --this.KX;
        this.Sq(st);
    }
    
    public boolean SD() {
        boolean b = false;
        if (this.Sw() != 0) {
            b = true;
        }
        return b;
    }
    
    public long SE() {
        return this.Sz();
    }
    
    public byte SF() {
        if (this.KP == this.KQ) {
            throw InvalidProtocolBufferNanoException.Sl();
        }
        return this.KW[this.KP++];
    }
    
    public String SG() {
        final int sw = this.Sw();
        if (sw <= this.KQ - this.KP && sw > 0) {
            final String s = new String(this.KW, this.KP, sw, d.KY);
            this.KP += sw;
            return s;
        }
        return new String(this.SL(sw), d.KY);
    }
    
    public void SI(final int n) {
        if (n < 0) {
            throw InvalidProtocolBufferNanoException.Sk();
        }
        if (this.KP + n > this.KR) {
            this.SI(this.KR - this.KP);
            throw InvalidProtocolBufferNanoException.Sl();
        }
        if (n <= this.KQ - this.KP) {
            this.KP += n;
            return;
        }
        throw InvalidProtocolBufferNanoException.Sl();
    }
    
    public void SJ(final int n) {
        if (n > this.KP - this.KS) {
            throw new IllegalArgumentException("Position " + n + " is beyond current " + (this.KP - this.KS));
        }
        if (n < 0) {
            throw new IllegalArgumentException("Bad position " + n);
        }
        this.KP = this.KS + n;
    }
    
    public int SK() {
        return this.Sw();
    }
    
    public byte[] SL(final int n) {
        if (n < 0) {
            throw InvalidProtocolBufferNanoException.Sk();
        }
        if (this.KP + n > this.KR) {
            this.SI(this.KR - this.KP);
            throw InvalidProtocolBufferNanoException.Sl();
        }
        if (n <= this.KQ - this.KP) {
            final byte[] array = new byte[n];
            System.arraycopy(this.KW, this.KP, array, 0, n);
            this.KP += n;
            return array;
        }
        throw InvalidProtocolBufferNanoException.Sl();
    }
    
    public float SM() {
        return Float.intBitsToFloat(this.Sy());
    }
    
    public long SN() {
        final long n = 255L;
        return (this.SF() & n) << 8 | (this.SF() & n) | (this.SF() & n) << 16 | (this.SF() & n) << 24 | (this.SF() & n) << 32 | (this.SF() & n) << 40 | (this.SF() & n) << 48 | (this.SF() & n) << 56;
    }
    
    public void SO() {
        int sx;
        do {
            sx = this.Sx();
        } while (sx != 0 && !(this.SQ(sx) ^ true));
    }
    
    public void SP(final int n) {
        if (this.KU != n) {
            throw InvalidProtocolBufferNanoException.Sp();
        }
    }
    
    public boolean SQ(final int n) {
        final boolean b = true;
        switch (f.SU(n)) {
            default: {
                throw InvalidProtocolBufferNanoException.Sj();
            }
            case 0: {
                this.SK();
                return b;
            }
            case 1: {
                this.SN();
                return b;
            }
            case 2: {
                this.SI(this.Sw());
                return b;
            }
            case 3: {
                this.SO();
                this.SP(f.SV(f.ST(n), 4));
                return b;
            }
            case 4: {
                return false;
            }
            case 5: {
                this.Sy();
                return b;
            }
        }
    }
    
    public void Sq(final int kr) {
        this.KR = kr;
        this.SC();
    }
    
    public boolean Sr() {
        return this.KP == this.KQ;
    }
    
    public int Ss() {
        return this.KP - this.KS;
    }
    
    public int St(final int n) {
        if (n < 0) {
            throw InvalidProtocolBufferNanoException.Sk();
        }
        final int kr = this.KP + n;
        final int kr2 = this.KR;
        if (kr > kr2) {
            throw InvalidProtocolBufferNanoException.Sl();
        }
        this.KR = kr;
        this.SC();
        return kr2;
    }
    
    public byte[] Su() {
        final int sw = this.Sw();
        if (sw <= this.KQ - this.KP && sw > 0) {
            final byte[] array = new byte[sw];
            System.arraycopy(this.KW, this.KP, array, 0, sw);
            this.KP += sw;
            return array;
        }
        if (sw == 0) {
            return f.Li;
        }
        return this.SL(sw);
    }
    
    public int Sv() {
        if (this.KR == -1 >>> 1) {
            return -1;
        }
        return this.KR - this.KP;
    }
    
    public int Sw() {
        int i = 0;
        final byte sf = this.SF();
        if (sf >= 0) {
            return sf;
        }
        final byte b = (byte)(sf & 0x7F);
        final byte sf2 = this.SF();
        int n;
        if (sf2 >= 0) {
            n = (b | sf2 << 7);
        }
        else {
            final int n2 = b | (sf2 & 0x7F) << 7;
            final byte sf3 = this.SF();
            if (sf3 >= 0) {
                n = (n2 | sf3 << 14);
            }
            else {
                final int n3 = n2 | (sf3 & 0x7F) << 14;
                final byte sf4 = this.SF();
                if (sf4 >= 0) {
                    n = (n3 | sf4 << 21);
                }
                else {
                    final int n4 = n3 | (sf4 & 0x7F) << 21;
                    final byte sf5 = this.SF();
                    n = (n4 | sf5 << 28);
                    if (sf5 < 0) {
                        while (i < 5) {
                            if (this.SF() >= 0) {
                                return n;
                            }
                            ++i;
                        }
                        throw InvalidProtocolBufferNanoException.Sn();
                    }
                }
            }
        }
        return n;
    }
    
    public int Sx() {
        if (this.Sr()) {
            return this.KU = 0;
        }
        this.KU = this.Sw();
        if (this.KU == 0) {
            throw InvalidProtocolBufferNanoException.So();
        }
        return this.KU;
    }
    
    public int Sy() {
        return (this.SF() & 0xFF) | (this.SF() & 0xFF) << 8 | (this.SF() & 0xFF) << 16 | (this.SF() & 0xFF) << 24;
    }
    
    public long Sz() {
        int i = 0;
        long n = 0L;
        while (i < 64) {
            final byte sf = this.SF();
            n |= (sf & 0x7F) << i;
            if ((sf & 0x80) == 0x0) {
                return n;
            }
            i += 7;
        }
        throw InvalidProtocolBufferNanoException.Sn();
    }
}
