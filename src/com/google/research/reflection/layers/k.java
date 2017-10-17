// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.util.Random;
import java.util.Arrays;

public class k
{
    public static void Uo(final b b, final boolean b2) {
        for (int i = 0; i < b.TW(false); ++i) {
            Us(b, i, b2);
        }
    }
    
    public static void Up(final double[] array) {
        Arrays.fill(array, 0.0);
    }
    
    static double Uq(final double n) {
        final double n2 = 0.0;
        if (n > n2) {
            return n;
        }
        return n2;
    }
    
    static void Ur(final b b, final int n, final b b2) {
        final int tu = b.TU(false);
        double n2 = -1.7976931348623157E308;
        int i = b.TS(false, n, 0);
        final int ts = b.TS(false, n, tu);
        for (int j = i; j < ts; ++j) {
            if (b.Nl[j] > n2) {
                n2 = b.Nl[j];
            }
        }
        double n3 = 0.0;
        while (i < ts) {
            b2.Nl[i] = Math.exp(b.Nl[i] - n2);
            n3 += b2.Nl[i];
            ++i;
        }
        if (n3 == 0.0) {
            throw new RuntimeException("softmax sum = 0");
        }
        for (int k = 0; k < tu; ++k) {
            final double[] nl = b2.Nl;
            nl[k] /= n3;
        }
    }
    
    public static void Us(final b b, final int n, final boolean b2) {
        final double n2 = 0.1;
        final int tu = b.TU(false);
        if (!b2) {
            final Random random = new Random();
            for (int i = 0; i < tu; ++i) {
                b.TQ(false, n, i, random.nextGaussian() * n2);
            }
        }
        else {
            for (int j = 0; j < tu; ++j) {
                b.TQ(false, n, j, Math.random() * n2);
            }
        }
    }
    
    static double Ut(final double n) {
        final double n2 = 1.0;
        final double exp = Math.exp(-n);
        if (!Double.isInfinite(exp)) {
            return n2 / (exp + n2);
        }
        return 0.0;
    }
}
