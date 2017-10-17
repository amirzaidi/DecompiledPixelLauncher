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
    public static void Un(final com.google.research.reflection.a.b b, final a a) {
        final List uq = Uq(b, a.av(), false);
        uq.add(a);
        b.aK(uq);
    }
    
    public static void Uo(final com.google.research.reflection.a.b b, final String s, final List list) {
        final List uq = Uq(b, s, false);
        uq.addAll(list);
        b.aK(uq);
    }
    
    public static List Up(final com.google.research.reflection.a.b b, final String s) {
        return Uq(b, s, true);
    }
    
    public static List Uq(final com.google.research.reflection.a.b b, final String s, final boolean b2) {
        final ArrayList<a> list = new ArrayList<a>();
        if (b.aE() != null) {
            for (final a a : b.aE()) {
                if (b2 == a.av().equals(s)) {
                    list.add(a);
                }
            }
            return list;
        }
        return list;
    }
}
