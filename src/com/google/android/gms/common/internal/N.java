// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.List;

public final class n
{
    private final List fD;
    private final Object fE;
    
    private n(final Object o) {
        this.fE = l.ht(o);
        this.fD = new ArrayList();
    }
    
    public n hB(final String s, final Object o) {
        final List fd = this.fD;
        final String s2 = (String)l.ht(s);
        final String value = String.valueOf(String.valueOf(o));
        fd.add(new StringBuilder(String.valueOf(s2).length() + 1 + String.valueOf(value).length()).append(s2).append("=").append(value).toString());
        return this;
    }
    
    public String toString() {
        final StringBuilder append = new StringBuilder(100).append(this.fE.getClass().getSimpleName()).append('{');
        for (int size = this.fD.size(), i = 0; i < size; ++i) {
            append.append((String)this.fD.get(i));
            if (i < size - 1) {
                append.append(", ");
            }
        }
        return append.append('}').toString();
    }
}
