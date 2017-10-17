// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.a;

import java.util.Collections;
import java.util.Set;

public final class o
{
    public static Set kc(final Object o, final Object o2, final Object o3) {
        final i i = new i(3);
        i.add(o);
        i.add(o2);
        i.add(o3);
        return Collections.unmodifiableSet((Set<?>)i);
    }
}
