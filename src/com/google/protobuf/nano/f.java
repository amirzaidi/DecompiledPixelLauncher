// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

public final class f
{
    public static final long[] Lc;
    public static final float[] Ld;
    public static final boolean[] Le;
    public static final byte[][] Lf;
    public static final String[] Lg;
    public static final int[] Lh;
    public static final byte[] Li;
    public static final double[] Lj;
    
    static {
        Lh = new int[0];
        Lc = new long[0];
        Ld = new float[0];
        Lj = new double[0];
        Le = new boolean[0];
        Lg = new String[0];
        Lf = new byte[0][];
        Li = new byte[0];
    }
    
    public static final int SS(final c c, final int n) {
        int n2 = 1;
        final int ss = c.Ss();
        c.SQ(n);
        while (c.Sx() == n) {
            c.SQ(n);
            ++n2;
        }
        c.SJ(ss);
        return n2;
    }
    
    public static int ST(final int n) {
        return n >>> 3;
    }
    
    static int SU(final int n) {
        return n & 0x7;
    }
    
    static int SV(final int n, final int n2) {
        return n << 3 | n2;
    }
    
    public static boolean SW(final c c, final int n) {
        return c.SQ(n);
    }
}
