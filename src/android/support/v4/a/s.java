// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

class s
{
    static final int[] VQ;
    static final long[] VR;
    static final Object[] VS;
    
    static {
        VQ = new int[0];
        VR = new long[0];
        VS = new Object[0];
    }
    
    public static int ahO(final int n) {
        return ahP(n * 4) / 4;
    }
    
    public static int ahP(final int n) {
        final int n2 = 1;
        for (int i = 4; i < 32; ++i) {
            if (n <= (n2 << i) - 12) {
                return (n2 << i) - 12;
            }
        }
        return n;
    }
    
    public static int ahQ(final int n) {
        return ahP(n * 8) / 8;
    }
    
    public static boolean ahR(final Object o, final Object o2) {
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
    
    static int ahS(final int[] array, final int n, final int n2) {
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
    
    static int ahT(final long[] array, final int n, final long n2) {
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
