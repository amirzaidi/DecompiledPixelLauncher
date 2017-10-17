// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.common;

import java.util.Iterator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import com.google.research.reflection.a.a;

public class b
{
    public static void Ta(final com.google.research.reflection.a.b b, final a a) {
        final List td = Td(b, a.E(), false);
        td.add(a);
        b.S(td);
    }
    
    public static void Tb(final com.google.research.reflection.a.b b, final String s, final List list) {
        final List td = Td(b, s, false);
        td.addAll(list);
        b.S(td);
    }
    
    public static List Tc(final com.google.research.reflection.a.b b, final String s) {
        return Td(b, s, true);
    }
    
    public static List Td(final com.google.research.reflection.a.b b, final String s, final boolean b2) {
        final ArrayList<a> list = new ArrayList<a>();
        if (b.N() != null) {
            for (final a a : b.N()) {
                if (b2 == a.E().equals(s)) {
                    list.add(a);
                }
            }
            return list;
        }
        return list;
    }
}
