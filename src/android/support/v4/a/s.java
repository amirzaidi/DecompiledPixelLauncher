// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

class s
{
    static final long[] XA;
    static final Object[] XB;
    static final int[] Xz;
    
    static {
        Xz = new int[0];
        XA = new long[0];
        XB = new Object[0];
    }
    
    public static int aiY(final int n) {
        return aiZ(n * 4) / 4;
    }
    
    public static int aiZ(final int n) {
        final int n2 = 1;
        for (int i = 4; i < 32; ++i) {
            if (n <= (n2 << i) - 12) {
                return (n2 << i) - 12;
            }
        }
        return n;
    }
    
    public static int aja(final int n) {
        return aiZ(n * 8) / 8;
    }
    
    public static boolean ajb(final Object o, final Object o2) {
        boolean b = false;
        if (o != o2) {
            if (o == null) {
                return b;
            }
            if (!o.equals(o2)) {
                return b;
            }
        }
        b = true;
        return b;
    }
    
    static int ajc(final int[] array, final int n, final int n2) {
        int i = 0;
        int n3 = n - 1;
        while (i <= n3) {
            final int n4 = i + n3 >>> 1;
            final int n5 = array[n4];
            if (n5 >= n2) {
                if (n5 <= n2) {
                    return n4;
                }
                n3 = n4 - 1;
            }
            else {
                i = n4 + 1;
            }
        }
        return ~i;
    }
    
    static int ajd(final long[] array, final int n, final long n2) {
        final boolean b = true;
        int n3 = n - 1;
        int i = 0;
        while (i <= n3) {
            final int n4 = i + n3 >>> 1;
            final long n5 = array[n4];
            if (n5 < n2 || !b) {
                i = n4 + 1;
            }
            else {
                if (n5 <= n2 && b) {
                    return n4;
                }
                n3 = n4 - 1;
            }
        }
        return ~i;
    }
}
