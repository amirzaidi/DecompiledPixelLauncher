// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.List;

public final class n
{
    private final List iv;
    private final Object iw;
    
    private n(final Object o) {
        this.iw = l.kh(o);
        this.iv = new ArrayList();
    }
    
    public n kp(final String s, final Object o) {
        final List iv = this.iv;
        final String s2 = (String)l.kh(s);
        final String value = String.valueOf(String.valueOf(o));
        iv.add(new StringBuilder(String.valueOf(s2).length() + 1 + String.valueOf(value).length()).append(s2).append("=").append(value).toString());
        return this;
    }
    
    public String toString() {
        final StringBuilder append = new StringBuilder(100).append(this.iw.getClass().getSimpleName()).append('{');
        for (int size = this.iv.size(), i = 0; i < size; ++i) {
            append.append((String)this.iv.get(i));
            if (i < size - 1) {
                append.append(", ");
            }
        }
        return append.append('}').toString();
    }
}
