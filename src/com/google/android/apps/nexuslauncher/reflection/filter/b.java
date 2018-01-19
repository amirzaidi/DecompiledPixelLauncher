// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.filter;

import android.content.ComponentName;
import java.util.Iterator;
import java.util.Collection;
import com.google.research.reflection.predictor.f;
import java.util.List;
import java.util.Calendar;
import java.util.LinkedList;
import java.util.HashSet;

public class b
{
    private static long r;
    private static int s;
    private static int t;
    private final HashSet u;
    private final com.google.android.apps.nexuslauncher.reflection.e.b v;
    private final LinkedList w;
    
    static {
        b.t = 1;
        b.r = 21600000L;
        b.s = 10;
    }
    
    public b(final com.google.android.apps.nexuslauncher.reflection.e.b v) {
        this.w = new LinkedList();
        this.u = new HashSet();
        this.v = v;
    }
    
    private void J() {
        final long timeInMillis = Calendar.getInstance().getTimeInMillis();
        while (this.w.size() > 0 && (timeInMillis > this.w.peek().z + b.r || this.w.peek().x > b.s)) {
            this.w.removeFirst();
        }
    }
    
    public void H(final List list, final List list2) {
        float n = 1.0f;
        this.J();
        if (list.size() > 0) {
            n += list.get(0).Pc;
        }
        this.u.clear();
        final LinkedList<f> list3 = new LinkedList<f>();
        int i = Math.max(this.w.size() - b.t, 0);
        int n2 = 0;
        while (i < this.w.size()) {
            this.u.add(((c)this.w.get(i)).y);
            final f f = new f(this.w.get(i).y, n2 + n);
            list3.add(0, (Object)f);
            if (list2 != null) {
                list2.add(0, f);
            }
            ++n2;
            ++i;
        }
        for (final f f2 : list) {
            if (!this.u.contains(f2.Pd)) {
                list3.add((Object)f2);
            }
        }
        list.clear();
        list.addAll(list3);
    }
    
    public void K() {
        for (final c c : this.w) {
            ++c.x;
        }
        this.J();
    }
    
    public void L(final ComponentName componentName, final long n, final long n2) {
        this.w.add(new c(this, componentName, n, n2));
        this.J();
    }
    
    void setMaxNumPromotion(final int t) {
        b.t = t;
    }
}
