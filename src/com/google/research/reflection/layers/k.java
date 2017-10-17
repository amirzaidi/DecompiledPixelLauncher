// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.util.Random;
import java.util.Arrays;

public class k
{
    public static void VC(final b b, final boolean b2) {
        for (int i = 0; i < b.Vj(false); ++i) {
            VG(b, i, b2);
        }
    }
    
    public static void VD(final double[] array) {
        Arrays.fill(array, 0.0);
    }
    
    static double VE(final double n) {
        final double n2 = 0.0;
        if (n > n2) {
            return n;
        }
        return n2;
    }
    
    static void VF(final b b, final int n, final b b2) {
        final int vh = b.Vh(false);
        double n2 = -1.7976931348623157E308;
        int i = b.Vf(false, n, 0);
        final int vf = b.Vf(false, n, vh);
        for (int j = i; j < vf; ++j) {
            if (b.Mr[j] > n2) {
                n2 = b.Mr[j];
            }
        }
        double n3 = 0.0;
        while (i < vf) {
            b2.Mr[i] = Math.exp(b.Mr[i] - n2);
            n3 += b2.Mr[i];
            ++i;
        }
        if (n3 == 0.0) {
            throw new RuntimeException("softmax sum = 0");
        }
        for (int k = 0; k < vh; ++k) {
            final double[] mr = b2.Mr;
            mr[k] /= n3;
        }
    }
    
    public static void VG(final b b, final int n, final boolean b2) {
        final double n2 = 0.1;
        final int vh = b.Vh(false);
        if (!b2) {
            final Random random = new Random();
            for (int i = 0; i < vh; ++i) {
                b.Vd(false, n, i, random.nextGaussian() * n2);
            }
        }
        else {
            for (int j = 0; j < vh; ++j) {
                b.Vd(false, n, j, Math.random() * n2);
            }
        }
    }
    
    static double VH(final double n) {
        final double n2 = 1.0;
        final double exp = Math.exp(-n);
        if (!Double.isInfinite(exp)) {
            return n2 / (exp + n2);
        }
        return 0.0;
    }
}
