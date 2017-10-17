// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.a;

public final class d
{
    public static String jy(final byte[] array, final int n, final int n2, final boolean b) {
        final int n3 = 16;
        final int n4 = 8;
        final int n5 = 1;
        if (array != null && array.length != 0 && n >= 0 && n2 > 0 && n + n2 <= array.length) {
            int n6 = 57;
            if (b) {
                n6 = 75;
            }
            final StringBuilder sb = new StringBuilder(n6 * ((n2 + 16 - 1) / 16));
            int n7 = n;
            int i = n2;
            int n8 = 0;
            int n9 = 0;
            while (i > 0) {
                if (n9 != 0) {
                    if (n9 == n4) {
                        sb.append(" -");
                    }
                }
                else {
                    if (n2 >= 65536) {
                        final Object[] array2 = new Object[n5];
                        array2[0] = n7;
                        sb.append(String.format("%08X:", array2));
                    }
                    else {
                        final Object[] array3 = new Object[n5];
                        array3[0] = n7;
                        sb.append(String.format("%04X:", array3));
                    }
                    n8 = n7;
                }
                final Object[] array4 = new Object[n5];
                array4[0] = (array[n7] & 0xFF);
                sb.append(String.format(" %02X", array4));
                final int n10 = i - 1;
                final int n11 = n9 + 1;
                if (b) {
                    if (n11 == n3 || n10 == 0) {
                        final int n12 = 16 - n11;
                        if (n12 > 0) {
                            for (int j = 0; j < n12; ++j) {
                                sb.append("   ");
                            }
                        }
                        if (n12 >= n4) {
                            sb.append("  ");
                        }
                        sb.append("  ");
                        for (int k = 0; k < n11; ++k) {
                            char c = (char)array[n8 + k];
                            if (c < ' ' || c > '~') {
                                c = '.';
                            }
                            sb.append(c);
                        }
                    }
                }
                int n13;
                if (n11 != n3 && n10 != 0) {
                    n13 = n11;
                }
                else {
                    sb.append('\n');
                    n13 = 0;
                }
                ++n7;
                n9 = n13;
                i = n10;
            }
            return sb.toString();
        }
        return null;
    }
}
