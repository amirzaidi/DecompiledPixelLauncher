// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.common;

import java.util.Objects;
import java.util.TimeZone;
import java.util.Calendar;
import com.google.research.reflection.a.b;

public class e
{
    public static int Tk(final b b) {
        return Tm(b).get(11);
    }
    
    public static int Tl(final b b) {
        return Tm(b).get(12);
    }
    
    private static Calendar Tm(final b b) {
        if (b.P() != null && !b.P().isEmpty()) {
            final Calendar instance = Calendar.getInstance(TimeZone.getTimeZone(b.P()));
            instance.setTimeInMillis(b.F());
            return instance;
        }
        final Calendar instance2 = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        instance2.setTimeInMillis(b.F() + b.O());
        return instance2;
    }
    
    public static long Tn(final b b, final b b2) {
        final long n = 0L;
        int n2 = 1;
        final long n3 = b2.F() - b.F() - b.K();
        int n4;
        if (b.J() <= n) {
            n4 = n2;
        }
        else {
            n4 = 0;
        }
        if (n4 == 0) {
            int n5;
            if (b2.J() <= n) {
                n5 = n2;
            }
            else {
                n5 = 0;
            }
            if (n5 == 0) {
                if (Objects.equals(b.J(), b2.J())) {
                    return b2.L() - b.L() - b.K();
                }
                final long n6 = b2.J() + b2.L() - (b.J() + b.L()) - b.K();
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
    
    public static int To(final b b) {
        return Tm(b).get(7);
    }
}
