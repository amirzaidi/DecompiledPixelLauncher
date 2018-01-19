// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import java.util.Objects;
import com.google.research.reflection.a.a;

public class d
{
    public static boolean aW(final a a) {
        final int n = 1;
        if (a == null || a.ah() == null || a.ah().size() < 2) {
            return false;
        }
        if (!"GEL".equals(a.ah().get(0))) {
            return false;
        }
        final String s = a.ah().get(n);
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
