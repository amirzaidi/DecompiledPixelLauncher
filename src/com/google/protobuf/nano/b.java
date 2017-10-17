// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

import java.nio.BufferOverflowException;
import java.nio.ReadOnlyBufferException;
import java.nio.ByteOrder;
import java.nio.ByteBuffer;

public final class b
{
    private final ByteBuffer KN;
    
    private b(final ByteBuffer kn) {
        (this.KN = kn).order(ByteOrder.LITTLE_ENDIAN);
    }
    
    private b(final byte[] array, final int n, final int n2) {
        this(ByteBuffer.wrap(array, n, n2));
    }
    
    public static int RD(final int n, final float n2) {
        return Rg(n) + Sa(n2);
    }
    
    public static int RE(final int n, final long n2) {
        return Rg(n) + RH(n2);
    }
    
    public static int RF(final int n, final int n2) {
        return Rg(n) + Rw(n2);
    }
    
    public static int RH(final long n) {
        return Rk(n);
    }
    
    public static int RJ(final int n, final double n2) {
        return Rg(n) + Rx(n2);
    }
    
    public static int RM(final boolean b) {
        return 1;
    }
    
    public static b RO(final byte[] array) {
        return Se(array, 0, array.length);
    }
    
    public static int RQ(final int n, final boolean b) {
        return Rg(n) + RM(b);
    }
    
    public static int RR(final int n, final a a) {
        return Rg(n) * 2 + Rh(a);
    }
    
    public static int RS(final int n) {
        if ((n & 0xFFFFFF80) == 0x0) {
            return 1;
        }
        if ((n & 0xFFFFC000) == 0x0) {
            return 2;
        }
        if ((0xFFE00000 & n) == 0x0) {
            return 3;
        }
        if ((0xF0000000 & n) == 0x0) {
            return 4;
        }
        return 5;
    }
    
    private static int RW(final CharSequence charSequence, final byte[] array, final int n, final int n2) {
        final char c = '\u0080';
        int length;
        int i;
        int n3;
        for (length = charSequence.length(), i = 0, n3 = n + n2; i < length && i + n < n3; ++i) {
            final char char1 = charSequence.charAt(i);
            if (char1 >= c) {
                break;
            }
            array[n + i] = (byte)char1;
        }
        if (i == length) {
            return n + length;
        }
        int n4 = n + i;
        while (i < length) {
            final char char2 = charSequence.charAt(i);
            int n5 = 0;
            Label_0157: {
                if (char2 < c && n4 < n3) {
                    n5 = n4 + 1;
                    array[n4] = (byte)char2;
                }
                else if (char2 < '\u0800' && n4 <= n3 - 2) {
                    final int n6 = n4 + 1;
                    array[n4] = (byte)(char2 >>> 6 | '\u03c0');
                    n5 = n6 + 1;
                    array[n6] = (byte)((char2 & '?') | '\u0080');
                }
                else if ((char2 < '\ud800' || '\udfff' < char2) && n4 <= n3 - 3) {
                    final int n7 = n4 + 1;
                    array[n4] = (byte)(char2 >>> 12 | '\u01e0');
                    final int n8 = n7 + 1;
                    array[n7] = (byte)((char2 >>> 6 & '?') | '\u0080');
                    n5 = n8 + 1;
                    array[n8] = (byte)((char2 & '?') | '\u0080');
                }
                else {
                    if (n4 <= n3 - 4) {
                        if (i + 1 != charSequence.length()) {
                            ++i;
                            final char char3 = charSequence.charAt(i);
                            if (!(Character.isSurrogatePair(char2, char3) ^ true)) {
                                final int codePoint = Character.toCodePoint(char2, char3);
                                final int n9 = n4 + 1;
                                array[n4] = (byte)(codePoint >>> 18 | 0xF0);
                                final int n10 = n9 + 1;
                                array[n9] = (byte)((codePoint >>> 12 & 0x3F) | 0x80);
                                final int n11 = n10 + 1;
                                array[n10] = (byte)((codePoint >>> 6 & 0x3F) | 0x80);
                                n5 = n11 + 1;
                                array[n11] = (byte)((codePoint & 0x3F) | 0x80);
                                break Label_0157;
                            }
                        }
                        throw new IllegalArgumentException("Unpaired surrogate at index " + (i - 1));
                    }
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + char2 + " at index " + n4);
                }
            }
            ++i;
            n4 = n5;
        }
        return n4;
    }
    
    public static int Rf(final int n, final byte[] array) {
        return Rg(n) + Rj(array);
    }
    
    public static int Rg(final int n) {
        return RS(f.SV(n, 0));
    }
    
    public static int Rh(final a a) {
        return a.getSerializedSize();
    }
    
    private static int Ri(final CharSequence charSequence) {
        int length;
        char c;
        for (length = charSequence.length(), c = '\0'; c < length && charSequence.charAt(c) < '\u0080'; ++c) {}
        char c2 = c;
        int n = length;
        while (c2 < length) {
            final char char1 = charSequence.charAt(c2);
            if (char1 >= '\u0800') {
                n += Rz(charSequence, c2);
                break;
            }
            final char c3 = (char)(('\u007f' - char1 >>> 31) + n);
            ++c2;
            n = c3;
        }
        if (n < length) {
            throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (n + 4294967296L));
        }
        return n;
    }
    
    public static int Rj(final byte[] array) {
        return RS(array.length) + array.length;
    }
    
    public static int Rk(final long n) {
        final long n2 = 0L;
        if ((0xFFFFFF80 & n) == n2) {
            return 1;
        }
        if ((0xFFFFFFFFFFFFC000L & n) == n2) {
            return 2;
        }
        if ((0xFFE00000L & n) == n2) {
            return 3;
        }
        if ((0xF0000000L & n) == n2) {
            return 4;
        }
        if ((0xFFFFFFF800000000L & n) == n2) {
            return 5;
        }
        if ((0xFFFFFC0000000000L & n) == n2) {
            return 6;
        }
        if ((0xFFFE000000000000L & n) == n2) {
            return 7;
        }
        if ((0xFF00000000000000L & n) == n2) {
            return 8;
        }
        if ((Long.MIN_VALUE & n) == n2) {
            return 9;
        }
        return 10;
    }
    
    public static int Rm(final a a) {
        final int serializedSize = a.getSerializedSize();
        return serializedSize + RS(serializedSize);
    }
    
    public static int Rt(final int n, final a a) {
        return Rg(n) + Rm(a);
    }
    
    public static int Rv(final String s) {
        final int ri = Ri(s);
        return ri + RS(ri);
    }
    
    public static int Rw(final int n) {
        if (n >= 0) {
            return RS(n);
        }
        return 10;
    }
    
    public static int Rx(final double n) {
        return 8;
    }
    
    private static int Rz(final CharSequence charSequence, final int n) {
        final int length = charSequence.length();
        char c = '\0';
        for (int i = n; i < length; ++i) {
            final char char1 = charSequence.charAt(i);
            if (char1 < '\u0800') {
                c += (char)('\u007f' - char1 >>> 31);
            }
            else {
                c += '\u0002';
                if ('\ud800' <= char1 && char1 <= '\udfff') {
                    if (Character.codePointAt(charSequence, i) < 65536) {
                        throw new IllegalArgumentException("Unpaired surrogate at index " + i);
                    }
                    ++i;
                }
            }
        }
        return c;
    }
    
    public static int Sa(final float n) {
        return 4;
    }
    
    public static int Sb(final int n, final String s) {
        return Rg(n) + Rv(s);
    }
    
    public static b Se(final byte[] array, final int n, final int n2) {
        return new b(array, n, n2);
    }
    
    private static void Sf(final CharSequence charSequence, final ByteBuffer byteBuffer) {
        final char c = '\u0080';
        for (int length = charSequence.length(), i = 0; i < length; ++i) {
            final char char1 = charSequence.charAt(i);
            if (char1 < c) {
                byteBuffer.put((byte)char1);
            }
            else if (char1 < '\u0800') {
                byteBuffer.put((byte)(char1 >>> 6 | '\u03c0'));
                byteBuffer.put((byte)((char1 & '?') | '\u0080'));
            }
            else {
                if (char1 >= '\ud800' && '\udfff' >= char1) {
                    if (i + 1 != charSequence.length()) {
                        ++i;
                        final char char2 = charSequence.charAt(i);
                        if (!(Character.isSurrogatePair(char1, char2) ^ true)) {
                            final int codePoint = Character.toCodePoint(char1, char2);
                            byteBuffer.put((byte)(codePoint >>> 18 | 0xF0));
                            byteBuffer.put((byte)((codePoint >>> 12 & 0x3F) | 0x80));
                            byteBuffer.put((byte)((codePoint >>> 6 & 0x3F) | 0x80));
                            byteBuffer.put((byte)((codePoint & 0x3F) | 0x80));
                            continue;
                        }
                    }
                    throw new IllegalArgumentException("Unpaired surrogate at index " + (i - 1));
                }
                byteBuffer.put((byte)(char1 >>> 12 | '\u01e0'));
                byteBuffer.put((byte)((char1 >>> 6 & '?') | '\u0080'));
                byteBuffer.put((byte)((char1 & '?') | '\u0080'));
            }
        }
    }
    
    private static void Si(final CharSequence charSequence, final ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        Label_0107: {
            if (!byteBuffer.hasArray()) {
                break Label_0107;
            }
            try {
                final byte[] array = byteBuffer.array();
                try {
                    final int arrayOffset = byteBuffer.arrayOffset();
                    try {
                        final int rw = RW(charSequence, array, arrayOffset + byteBuffer.position(), byteBuffer.remaining());
                        try {
                            byteBuffer.position(rw - byteBuffer.arrayOffset());
                            return;
                        }
                        catch (ArrayIndexOutOfBoundsException ex2) {
                            final BufferOverflowException ex = new BufferOverflowException();
                            ex.initCause(ex2);
                            throw ex;
                        }
                    }
                    catch (ArrayIndexOutOfBoundsException ex3) {}
                }
                catch (ArrayIndexOutOfBoundsException ex4) {}
            }
            catch (ArrayIndexOutOfBoundsException ex5) {}
        }
        Sf(charSequence, byteBuffer);
    }
    
    public void RA(final int n, final int n2) {
        this.Sd(n, 0);
        this.RB(n2);
    }
    
    public void RB(final int n) {
        if (n >= 0) {
            this.RZ(n);
        }
        else {
            this.Rl(n);
        }
    }
    
    public void RC(final long n) {
        if (this.KN.remaining() < 8) {
            throw new CodedOutputByteBufferNano$OutOfSpaceException(this.KN.position(), this.KN.limit());
        }
        this.KN.putLong(n);
    }
    
    public void RG(final a a) {
        this.RZ(a.getCachedSize());
        a.writeTo(this);
    }
    
    public void RI(final a a) {
        a.writeTo(this);
    }
    
    public void RK(final byte[] array) {
        this.RZ(array.length);
        this.Rr(array);
    }
    
    public void RL(final int n, final boolean b) {
        this.Sd(n, 0);
        this.RU(b);
    }
    
    public void RN() {
        if (this.Ru() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }
    
    public void RP(final int n, final a a) {
        this.Sd(n, 2);
        this.RG(a);
    }
    
    public void RT(final int n) {
        this.Rn((byte)n);
    }
    
    public void RU(final boolean b) {
        int n;
        if (b) {
            n = 1;
        }
        else {
            n = 0;
        }
        this.RT(n);
    }
    
    public void RV(final double n) {
        this.RC(Double.doubleToLongBits(n));
    }
    
    public void RX(final int n, final float n2) {
        this.Sd(n, 5);
        this.Sc(n2);
    }
    
    public void RY(final int n, final String s) {
        this.Sd(n, 2);
        this.Rq(s);
    }
    
    public void RZ(int n) {
        while ((n & 0xFFFFFF80) != 0x0) {
            this.RT((n & 0x7F) | 0x80);
            n >>>= 7;
        }
        this.RT(n);
    }
    
    public void Rl(long n) {
        while ((0xFFFFFF80 & n) != 0x0L) {
            this.RT(((int)n & 0x7F) | 0x80);
            n >>>= 7;
        }
        this.RT((int)n);
    }
    
    public void Rn(final byte b) {
        if (!this.KN.hasRemaining()) {
            throw new CodedOutputByteBufferNano$OutOfSpaceException(this.KN.position(), this.KN.limit());
        }
        this.KN.put(b);
    }
    
    public void Ro(final int n, final byte[] array) {
        this.Sd(n, 2);
        this.RK(array);
    }
    
    public void Rp(final int n, final double n2) {
        this.Sd(n, 1);
        this.RV(n2);
    }
    
    public void Rq(final String s) {
        Label_0220: {
            int rs = 0;
            int position = 0;
            int position2 = 0;
            try {
                final int length = s.length();
                try {
                    rs = RS(length);
                    try {
                        if (rs != RS(s.length() * 3)) {
                            break Label_0220;
                        }
                        final ByteBuffer kn = this.KN;
                        try {
                            position = kn.position();
                            try {
                                final ByteBuffer kn2 = this.KN;
                                try {
                                    Label_0134: {
                                        if (kn2.remaining() >= rs) {
                                            break Label_0134;
                                        }
                                        final int n = rs + position;
                                        final ByteBuffer kn3 = this.KN;
                                        try {
                                            throw new CodedOutputByteBufferNano$OutOfSpaceException(n, kn3.limit());
                                            this.KN.position(position + rs);
                                            Si(s, this.KN);
                                            final ByteBuffer kn4 = this.KN;
                                            try {
                                                position2 = kn4.position();
                                            }
                                            catch (BufferOverflowException ex) {}
                                        }
                                        catch (BufferOverflowException ex2) {}
                                    }
                                }
                                catch (BufferOverflowException ex3) {}
                            }
                            catch (BufferOverflowException ex4) {}
                        }
                        catch (BufferOverflowException ex5) {}
                    }
                    catch (BufferOverflowException ex6) {}
                }
                catch (BufferOverflowException ex7) {}
            }
            catch (BufferOverflowException ex8) {}
            this.KN.position(position);
            this.RZ(position2 - position - rs);
            this.KN.position(position2);
            return;
        }
        this.RZ(Ri(s));
        Si(s, this.KN);
    }
    
    public void Rr(final byte[] array) {
        this.Sg(array, 0, array.length);
    }
    
    public void Rs(final int n) {
        if (this.KN.remaining() < 4) {
            throw new CodedOutputByteBufferNano$OutOfSpaceException(this.KN.position(), this.KN.limit());
        }
        this.KN.putInt(n);
    }
    
    public int Ru() {
        return this.KN.remaining();
    }
    
    public void Ry(final long n) {
        this.Rl(n);
    }
    
    public void Sc(final float n) {
        this.Rs(Float.floatToIntBits(n));
    }
    
    public void Sd(final int n, final int n2) {
        this.RZ(f.SV(n, n2));
    }
    
    public void Sg(final byte[] array, final int n, final int n2) {
        if (this.KN.remaining() >= n2) {
            this.KN.put(array, n, n2);
            return;
        }
        throw new CodedOutputByteBufferNano$OutOfSpaceException(this.KN.position(), this.KN.limit());
    }
    
    public void Sh(final int n, final long n2) {
        this.Sd(n, 0);
        this.Ry(n2);
    }
}
