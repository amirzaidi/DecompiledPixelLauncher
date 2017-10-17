// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

public final class f
{
    public static final long[] PJ;
    public static final float[] PK;
    public static final boolean[] PL;
    public static final byte[][] PM;
    public static final String[] PN;
    public static final int[] PO;
    public static final byte[] PP;
    public static final double[] PQ;
    
    static {
        PO = new int[0];
        PJ = new long[0];
        PK = new float[0];
        PQ = new double[0];
        PL = new boolean[0];
        PN = new String[0];
        PM = new byte[0][];
        PP = new byte[0];
    }
    
    public static final int WN(final c c, final int n) {
        int n2 = 1;
        final int wn = c.Wn();
        c.WL(n);
        while (c.Ws() == n) {
            c.WL(n);
            ++n2;
        }
        c.WE(wn);
        return n2;
    }
    
    public static int WO(final int n) {
        return n >>> 3;
    }
    
    static int WP(final int n) {
        return n & 0x7;
    }
    
    static int WQ(final int n, final int n2) {
        return n << 3 | n2;
    }
    
    public static boolean WR(final c c, final int n) {
        return c.WL(n);
    }
}
