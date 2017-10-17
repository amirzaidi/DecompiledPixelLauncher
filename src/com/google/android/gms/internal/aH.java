// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.nio.ByteOrder;
import java.nio.ByteBuffer;

public class ah
{
    private static void tS(final byte[] array, final int n, final long n2, final long n3, final long[] array2) {
        final long tu = tU(array, n);
        final long tu2 = tU(array, n + 8);
        final long tu3 = tU(array, n + 16);
        final long tu4 = tU(array, n + 24);
        final long n4 = tu + n2;
        final long rotateRight = Long.rotateRight(n3 + n4 + tu4, 51);
        final long n5 = tu2 + n4 + tu3;
        final long n6 = Long.rotateRight(n5, 23) + rotateRight;
        array2[0] = n5 + tu4;
        array2[1] = n4 + n6;
    }
    
    private static long tT(final byte[] array, final long n) {
        final long n2 = -4132994306676758123L;
        final int n3 = array.length & 0xFFFFFFF8;
        final int n4 = array.length & 0x7;
        long n5 = array.length * n2 ^ n;
        long n6;
        for (int i = 0; i < n3; i += 8, n5 = n6) {
            n6 = (n5 ^ tX(tU(array, i) * n2) * n2) * n2;
        }
        if (n4 != 0) {
            n5 = (n5 ^ tY(array, n3, n4)) * n2;
        }
        return tX(tX(n5) * n2);
    }
    
    private static long tU(final byte[] array, final int n) {
        final ByteBuffer wrap = ByteBuffer.wrap(array, n, 8);
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        return wrap.getLong();
    }
    
    private static long tV(final byte[] array) {
        final int length = array.length;
        final long tu = tU(array, 0);
        final long n = tU(array, length - 16) ^ 0x8D58AC26AFE12E47L;
        final long n2 = tU(array, length - 56) ^ 0xA5B85C5E198ED849L;
        final long[] array2 = new long[2];
        final long[] array4;
        final long[] array3 = array4 = new long[2];
        tS(array, length - 64, length, n, array2);
        tS(array, length - 32, length * -8261664234251669945L, -6505348102511208375L, array3);
        long n3 = n2 + tX(array2[1]) * -8261664234251669945L;
        final long n4 = -8261664234251669945L * Long.rotateRight(n3 + tu, 39);
        long n5 = Long.rotateRight(n, 33) * -8261664234251669945L;
        final int n6 = length - 1 & 0xFFFFFFC0;
        int n7 = 0;
        long n8 = n4;
        int n9 = n6;
        long n12;
        long rotateRight;
        while (true) {
            final long n10 = Long.rotateRight(n8 + n5 + array2[0] + tU(array, n7 + 16), 37) * -8261664234251669945L;
            final long n11 = Long.rotateRight(array2[1] + n5 + tU(array, n7 + 48), 42) * -8261664234251669945L;
            n12 = (n10 ^ array4[1]);
            n5 = (n11 ^ array2[0]);
            rotateRight = Long.rotateRight(n3 ^ array4[0], 33);
            tS(array, n7, array2[1] * -8261664234251669945L, array4[0] + n12, array2);
            tS(array, n7 + 32, rotateRight + array4[1], n5, array4);
            n7 += 64;
            final int n13 = n9 - 64;
            if (n13 == 0) {
                break;
            }
            n3 = n12;
            n8 = rotateRight;
            n9 = n13;
        }
        return ua(ua(array2[0], array4[0]) + tX(n5) * -8261664234251669945L + n12, ua(array2[1], array4[1]) + rotateRight);
    }
    
    public static long tW(final byte[] array) {
        long tu = -6505348102511208375L;
        long n;
        if (array.length > 32) {
            if (array.length > 64) {
                n = tV(array);
            }
            else {
                n = tZ(array);
            }
        }
        else {
            n = tT(array, -1397348546323613475L);
        }
        long tu2;
        if (array.length < 8) {
            tu2 = tu;
        }
        else {
            tu2 = tU(array, 0);
        }
        if (array.length >= 9) {
            tu = tU(array, array.length - 8);
        }
        long ua = ua(n + tu, tu2);
        if (ua == 0L || ua == 1L) {
            ua -= 2;
        }
        return ua;
    }
    
    private static long tX(final long n) {
        return n >>> 47 ^ n;
    }
    
    private static long tY(final byte[] array, final int n, final int n2) {
        long n3 = 0L;
        for (int min = Math.min(n2, 8), i = 0; i < min; ++i) {
            n3 |= (array[n + i] & 0xFFL) << i * 8;
        }
        return n3;
    }
    
    private static long tZ(final byte[] array) {
        final int length = array.length;
        final long tu = tU(array, 24);
        final long n = tU(array, 0) + (length + tU(array, length - 16)) * -6505348102511208375L;
        final long rotateRight = Long.rotateRight(n + tu, 52);
        final long rotateRight2 = Long.rotateRight(n, 37);
        final long n2 = n + tU(array, 8);
        final long n3 = rotateRight2 + Long.rotateRight(n2, 7);
        final long n4 = n2 + tU(array, 16);
        final long n5 = tu + n4;
        final long n6 = Long.rotateRight(n4, 31) + rotateRight + n3;
        final long n7 = tU(array, 16) + tU(array, length - 32);
        final long tu2 = tU(array, length - 8);
        final long rotateRight3 = Long.rotateRight(n7 + tu2, 52);
        final long rotateRight4 = Long.rotateRight(n7, 37);
        final long n8 = n7 + tU(array, length - 24);
        final long n9 = rotateRight4 + Long.rotateRight(n8, 7);
        final long n10 = tU(array, length - 16) + n8;
        return tX(tX((Long.rotateRight(n10, 31) + rotateRight3 + n9 + n5) * -4288712594273399085L + (n10 + tu2 + n6) * -6505348102511208375L) * -6505348102511208375L + n6) * -4288712594273399085L;
    }
    
    private static long ua(final long n, final long n2) {
        final int n3 = 47;
        final long n4 = -4132994306676758123L;
        final long n5 = (n2 ^ n) * n4;
        final long n6 = (n5 ^ n5 >>> n3 ^ n) * n4;
        return (n6 ^ n6 >>> n3) * n4;
    }
}
