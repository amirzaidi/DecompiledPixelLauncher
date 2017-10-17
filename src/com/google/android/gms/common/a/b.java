// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.a;

import java.util.Iterator;
import java.util.HashMap;

public class b
{
    public static void ju(final StringBuilder sb, final HashMap hashMap) {
        sb.append("{");
        final boolean b = true;
        final float n = Float.MIN_VALUE;
        final Iterator<String> iterator = hashMap.keySet().iterator();
        int n2 = b ? 1 : 0;
        float n3 = n;
        while (iterator.hasNext()) {
            final String s = iterator.next();
            int n4;
            float n5;
            if (n2 != 0) {
                n4 = 0;
                n5 = 0.0f;
            }
            else {
                sb.append(",");
                n4 = n2;
                n5 = n3;
            }
            final String s2 = (String)hashMap.get(s);
            sb.append("\"").append(s).append("\":");
            if (s2 != null) {
                sb.append("\"").append(s2).append("\"");
            }
            else {
                sb.append("null");
            }
            n2 = n4;
            n3 = n5;
        }
        sb.append("}");
    }
}
