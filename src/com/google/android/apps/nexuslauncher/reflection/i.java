// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import java.util.Objects;
import com.google.research.reflection.a.b;

public class i
{
    public static boolean aV(final b b) {
        final int n = 1;
        if (b == null || b.M() == null || b.M().size() < 2) {
            return false;
        }
        if (!"GEL".equals(b.M().get(0))) {
            return false;
        }
        final String s = b.M().get(n);
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
