// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.nio.ByteOrder;
import java.nio.ByteBuffer;

public class ab
{
    private static void tR(final byte[] array, final int n, final long n2, final long n3, final long[] array2) {
        final long tt = tT(array, n);
        final long tt2 = tT(array, n + 8);
        final long tt3 = tT(array, n + 16);
        final long tt4 = tT(array, n + 24);
        final long n4 = tt + n2;
        final long rotateRight = Long.rotateRight(n3 + n4 + tt4, 51);
        final long n5 = tt2 + n4 + tt3;
        final long n6 = Long.rotateRight(n5, 23) + rotateRight;
        array2[0] = n5 + tt4;
        array2[1] = n4 + n6;
    }
    
    private static long tS(final byte[] array, final long n) {
        final long n2 = -4132994306676758123L;
        final int n3 = array.length & 0xFFFFFFF8;
        final int n4 = array.length & 0x7;
        long n5 = array.length * n2 ^ n;
        long n6;
        for (int i = 0; i < n3; i += 8, n5 = n6) {
            n6 = (n5 ^ tW(tT(array, i) * n2) * n2) * n2;
        }
        if (n4 != 0) {
            n5 = (n5 ^ tX(array, n3, n4)) * n2;
        }
        return tW(tW(n5) * n2);
    }
    
    private static long tT(final byte[] array, final int n) {
        final ByteBuffer wrap = ByteBuffer.wrap(array, n, 8);
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        return wrap.getLong();
    }
    
    private static long tU(final byte[] array) {
        final int length = array.length;
        final long tt = tT(array, 0);
        final long n = tT(array, length - 16) ^ 0x8D58AC26AFE12E47L;
        final long n2 = tT(array, length - 56) ^ 0xA5B85C5E198ED849L;
        final long[] array2 = new long[2];
        final long[] array4;
        final long[] array3 = array4 = new long[2];
        tR(array, length - 64, length, n, array2);
        tR(array, length - 32, length * -8261664234251669945L, -6505348102511208375L, array3);
        long n3 = n2 + tW(array2[1]) * -8261664234251669945L;
        final long n4 = -8261664234251669945L * Long.rotateRight(n3 + tt, 39);
        long n5 = Long.rotateRight(n, 33) * -8261664234251669945L;
        final int n6 = length - 1 & 0xFFFFFFC0;
        int n7 = 0;
        long n8 = n4;
        int n9 = n6;
        long n12;
        long rotateRight;
        while (true) {
            final long n10 = Long.rotateRight(n8 + n5 + array2[0] + tT(array, n7 + 16), 37) * -8261664234251669945L;
            final long n11 = Long.rotateRight(array2[1] + n5 + tT(array, n7 + 48), 42) * -8261664234251669945L;
            n12 = (n10 ^ array4[1]);
            n5 = (n11 ^ array2[0]);
            rotateRight = Long.rotateRight(n3 ^ array4[0], 33);
            tR(array, n7, array2[1] * -8261664234251669945L, array4[0] + n12, array2);
            tR(array, n7 + 32, rotateRight + array4[1], n5, array4);
            n7 += 64;
            final int n13 = n9 - 64;
            if (n13 == 0) {
                break;
            }
            n3 = n12;
            n8 = rotateRight;
            n9 = n13;
        }
        return tZ(tZ(array2[0], array4[0]) + tW(n5) * -8261664234251669945L + n12, tZ(array2[1], array4[1]) + rotateRight);
    }
    
    public static long tV(final byte[] array) {
        long tt = -6505348102511208375L;
        long n;
        if (array.length > 32) {
            if (array.length > 64) {
                n = tU(array);
            }
            else {
                n = tY(array);
            }
        }
        else {
            n = tS(array, -1397348546323613475L);
        }
        long tt2;
        if (array.length < 8) {
            tt2 = tt;
        }
        else {
            tt2 = tT(array, 0);
        }
        if (array.length >= 9) {
            tt = tT(array, array.length - 8);
        }
        long tz = tZ(n + tt, tt2);
        if (tz == 0L || tz == 1L) {
            tz -= 2;
        }
        return tz;
    }
    
    private static long tW(final long n) {
        return n >>> 47 ^ n;
    }
    
    private static long tX(final byte[] array, final int n, final int n2) {
        long n3 = 0L;
        for (int min = Math.min(n2, 8), i = 0; i < min; ++i) {
            n3 |= (array[n + i] & 0xFFL) << i * 8;
        }
        return n3;
    }
    
    private static long tY(final byte[] array) {
        final int length = array.length;
        final long tt = tT(array, 24);
        final long n = tT(array, 0) + (length + tT(array, length - 16)) * -6505348102511208375L;
        final long rotateRight = Long.rotateRight(n + tt, 52);
        final long rotateRight2 = Long.rotateRight(n, 37);
        final long n2 = n + tT(array, 8);
        final long n3 = rotateRight2 + Long.rotateRight(n2, 7);
        final long n4 = n2 + tT(array, 16);
        final long n5 = tt + n4;
        final long n6 = Long.rotateRight(n4, 31) + rotateRight + n3;
        final long n7 = tT(array, 16) + tT(array, length - 32);
        final long tt2 = tT(array, length - 8);
        final long rotateRight3 = Long.rotateRight(n7 + tt2, 52);
        final long rotateRight4 = Long.rotateRight(n7, 37);
        final long n8 = n7 + tT(array, length - 24);
        final long n9 = rotateRight4 + Long.rotateRight(n8, 7);
        final long n10 = tT(array, length - 16) + n8;
        return tW(tW((Long.rotateRight(n10, 31) + rotateRight3 + n9 + n5) * -4288712594273399085L + (n10 + tt2 + n6) * -6505348102511208375L) * -6505348102511208375L + n6) * -4288712594273399085L;
    }
    
    private static long tZ(final long n, final long n2) {
        final int n3 = 47;
        final long n4 = -4132994306676758123L;
        final long n5 = (n2 ^ n) * n4;
        final long n6 = (n5 ^ n5 >>> n3 ^ n) * n4;
        return (n6 ^ n6 >>> n3) * n4;
    }
}
