// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import java.util.Objects;
import com.google.research.reflection.a.b;

public class o
{
    public static boolean cx(final b b) {
        final int n = 1;
        if (b == null || b.aD() == null || b.aD().size() < 2) {
            return false;
        }
        if (!"GEL".equals(b.aD().get(0))) {
            return false;
        }
        final String s = b.aD().get(n);
        boolean equals;
        if (!Objects.equals(s, Integer.toString(4)) && !Objects.equals(s, Integer.toString(7))) {
            equals = Objects.equals(s, Integer.toString(8));
        }
        else {
            equals = (n != 0);
        }
        return equals;
    }
}
