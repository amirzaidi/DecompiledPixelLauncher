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
    private final ByteBuffer Pu;
    
    private b(final ByteBuffer pu) {
        (this.Pu = pu).order(ByteOrder.LITTLE_ENDIAN);
    }
    
    private b(final byte[] array, final int n, final int n2) {
        this(ByteBuffer.wrap(array, n, n2));
    }
    
    public static int VA(final int n, final int n2) {
        return Vb(n) + Vr(n2);
    }
    
    public static int VC(final long n) {
        return Vf(n);
    }
    
    public static int VE(final int n, final double n2) {
        return Vb(n) + Vs(n2);
    }
    
    public static int VH(final boolean b) {
        return 1;
    }
    
    public static b VJ(final byte[] array) {
        return VZ(array, 0, array.length);
    }
    
    public static int VL(final int n, final boolean b) {
        return Vb(n) + VH(b);
    }
    
    public static int VM(final int n, final a a) {
        return Vb(n) * 2 + Vc(a);
    }
    
    public static int VN(final int n) {
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
    
    private static int VR(final CharSequence charSequence, final byte[] array, final int n, final int n2) {
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
    
    public static int VV(final float n) {
        return 4;
    }
    
    public static int VW(final int n, final String s) {
        return Vb(n) + Vq(s);
    }
    
    public static b VZ(final byte[] array, final int n, final int n2) {
        return new b(array, n, n2);
    }
    
    public static int Va(final int n, final byte[] array) {
        return Vb(n) + Ve(array);
    }
    
    public static int Vb(final int n) {
        return VN(f.WQ(n, 0));
    }
    
    public static int Vc(final a a) {
        return a.getSerializedSize();
    }
    
    private static int Vd(final CharSequence charSequence) {
        int length;
        char c;
        for (length = charSequence.length(), c = '\0'; c < length && charSequence.charAt(c) < '\u0080'; ++c) {}
        char c2 = c;
        int n = length;
        while (c2 < length) {
            final char char1 = charSequence.charAt(c2);
            if (char1 >= '\u0800') {
                n += Vu(charSequence, c2);
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
    
    public static int Ve(final byte[] array) {
        return VN(array.length) + array.length;
    }
    
    public static int Vf(final long n) {
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
    
    public static int Vh(final a a) {
        final int serializedSize = a.getSerializedSize();
        return serializedSize + VN(serializedSize);
    }
    
    public static int Vo(final int n, final a a) {
        return Vb(n) + Vh(a);
    }
    
    public static int Vq(final String s) {
        final int vd = Vd(s);
        return vd + VN(vd);
    }
    
    public static int Vr(final int n) {
        if (n >= 0) {
            return VN(n);
        }
        return 10;
    }
    
    public static int Vs(final double n) {
        return 8;
    }
    
    private static int Vu(final CharSequence charSequence, final int n) {
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
    
    public static int Vy(final int n, final float n2) {
        return Vb(n) + VV(n2);
    }
    
    public static int Vz(final int n, final long n2) {
        return Vb(n) + VC(n2);
    }
    
    private static void Wa(final CharSequence charSequence, final ByteBuffer byteBuffer) {
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
    
    private static void Wd(final CharSequence charSequence, final ByteBuffer byteBuffer) {
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
                        final int vr = VR(charSequence, array, arrayOffset + byteBuffer.position(), byteBuffer.remaining());
                        try {
                            byteBuffer.position(vr - byteBuffer.arrayOffset());
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
        Wa(charSequence, byteBuffer);
    }
    
    public void VB(final a a) {
        this.VU(a.getCachedSize());
        a.writeTo(this);
    }
    
    public void VD(final a a) {
        a.writeTo(this);
    }
    
    public void VF(final byte[] array) {
        this.VU(array.length);
        this.Vm(array);
    }
    
    public void VG(final int n, final boolean b) {
        this.VY(n, 0);
        this.VP(b);
    }
    
    public void VI() {
        if (this.Vp() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }
    
    public void VK(final int n, final a a) {
        this.VY(n, 2);
        this.VB(a);
    }
    
    public void VO(final int n) {
        this.Vi((byte)n);
    }
    
    public void VP(final boolean b) {
        int n;
        if (b) {
            n = 1;
        }
        else {
            n = 0;
        }
        this.VO(n);
    }
    
    public void VQ(final double n) {
        this.Vx(Double.doubleToLongBits(n));
    }
    
    public void VS(final int n, final float n2) {
        this.VY(n, 5);
        this.VX(n2);
    }
    
    public void VT(final int n, final String s) {
        this.VY(n, 2);
        this.Vl(s);
    }
    
    public void VU(int n) {
        while ((n & 0xFFFFFF80) != 0x0) {
            this.VO((n & 0x7F) | 0x80);
            n >>>= 7;
        }
        this.VO(n);
    }
    
    public void VX(final float n) {
        this.Vn(Float.floatToIntBits(n));
    }
    
    public void VY(final int n, final int n2) {
        this.VU(f.WQ(n, n2));
    }
    
    public void Vg(long n) {
        while ((0xFFFFFF80 & n) != 0x0L) {
            this.VO(((int)n & 0x7F) | 0x80);
            n >>>= 7;
        }
        this.VO((int)n);
    }
    
    public void Vi(final byte b) {
        if (!this.Pu.hasRemaining()) {
            throw new CodedOutputByteBufferNano$OutOfSpaceException(this.Pu.position(), this.Pu.limit());
        }
        this.Pu.put(b);
    }
    
    public void Vj(final int n, final byte[] array) {
        this.VY(n, 2);
        this.VF(array);
    }
    
    public void Vk(final int n, final double n2) {
        this.VY(n, 1);
        this.VQ(n2);
    }
    
    public void Vl(final String s) {
        Label_0220: {
            int vn = 0;
            int position = 0;
            int position2 = 0;
            try {
                final int length = s.length();
                try {
                    vn = VN(length);
                    try {
                        if (vn != VN(s.length() * 3)) {
                            break Label_0220;
                        }
                        final ByteBuffer pu = this.Pu;
                        try {
                            position = pu.position();
                            try {
                                final ByteBuffer pu2 = this.Pu;
                                try {
                                    Label_0134: {
                                        if (pu2.remaining() >= vn) {
                                            break Label_0134;
                                        }
                                        final int n = vn + position;
                                        final ByteBuffer pu3 = this.Pu;
                                        try {
                                            throw new CodedOutputByteBufferNano$OutOfSpaceException(n, pu3.limit());
                                            this.Pu.position(position + vn);
                                            Wd(s, this.Pu);
                                            final ByteBuffer pu4 = this.Pu;
                                            try {
                                                position2 = pu4.position();
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
            this.Pu.position(position);
            this.VU(position2 - position - vn);
            this.Pu.position(position2);
            return;
        }
        this.VU(Vd(s));
        Wd(s, this.Pu);
    }
    
    public void Vm(final byte[] array) {
        this.Wb(array, 0, array.length);
    }
    
    public void Vn(final int n) {
        if (this.Pu.remaining() < 4) {
            throw new CodedOutputByteBufferNano$OutOfSpaceException(this.Pu.position(), this.Pu.limit());
        }
        this.Pu.putInt(n);
    }
    
    public int Vp() {
        return this.Pu.remaining();
    }
    
    public void Vt(final long n) {
        this.Vg(n);
    }
    
    public void Vv(final int n, final int n2) {
        this.VY(n, 0);
        this.Vw(n2);
    }
    
    public void Vw(final int n) {
        if (n >= 0) {
            this.VU(n);
        }
        else {
            this.Vg(n);
        }
    }
    
    public void Vx(final long n) {
        if (this.Pu.remaining() < 8) {
            throw new CodedOutputByteBufferNano$OutOfSpaceException(this.Pu.position(), this.Pu.limit());
        }
        this.Pu.putLong(n);
    }
    
    public void Wb(final byte[] array, final int n, final int n2) {
        if (this.Pu.remaining() >= n2) {
            this.Pu.put(array, n, n2);
            return;
        }
        throw new CodedOutputByteBufferNano$OutOfSpaceException(this.Pu.position(), this.Pu.limit());
    }
    
    public void Wc(final int n, final long n2) {
        this.VY(n, 0);
        this.Vt(n2);
    }
}
