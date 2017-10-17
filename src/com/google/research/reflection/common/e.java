// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.common;

import java.util.TimeZone;
import java.util.Calendar;
import java.util.Objects;
import com.google.research.reflection.a.b;

public class e
{
    public static long UA(final b b, final b b2) {
        final long n = 0L;
        int n2 = 1;
        final long n3 = b2.ax() - b.ax() - b.aB();
        int n4;
        if (b.aA() <= n) {
            n4 = n2;
        }
        else {
            n4 = 0;
        }
        if (n4 == 0) {
            int n5;
            if (b2.aA() <= n) {
                n5 = n2;
            }
            else {
                n5 = 0;
            }
            if (n5 == 0) {
                if (Objects.equals(b.aA(), b2.aA())) {
                    return b2.aC() - b.aC() - b.aB();
                }
                final long n6 = b2.aA() + b2.aC() - (b.aA() + b.aC()) - b.aB();
                if (n3 == n6) {
                    return n6;
                }
                throw new UncertaintyException(n6);
            }
        }
        if (n3 < n) {
            n2 = 0;
        }
        if (n2 == 0) {
            throw new UncertaintyException(Long.MAX_VALUE);
        }
        return n3;
    }
    
    public static int UB(final b b) {
        return Uz(b).get(7);
    }
    
    public static int Ux(final b b) {
        return Uz(b).get(11);
    }
    
    public static int Uy(final b b) {
        return Uz(b).get(12);
    }
    
    private static Calendar Uz(final b b) {
        if (b.aG() != null && !b.aG().isEmpty()) {
            final Calendar instance = Calendar.getInstance(TimeZone.getTimeZone(b.aG()));
            instance.setTimeInMillis(b.ax());
            return instance;
        }
        final Calendar instance2 = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        instance2.setTimeInMillis(b.ax() + b.aF());
        return instance2;
    }
}
