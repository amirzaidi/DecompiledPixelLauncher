// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.filter;

import android.content.ComponentName;
import java.util.Iterator;
import java.util.ArrayList;
import com.google.research.reflection.predictor.f;
import java.util.List;
import java.util.Calendar;
import java.util.LinkedList;
import java.util.HashSet;

public class b
{
    private static long bZ;
    private static int ca;
    private static int cb;
    private final HashSet cc;
    private final com.google.android.apps.nexuslauncher.reflection.d.b cd;
    private final LinkedList ce;
    
    static {
        b.cb = 1;
        b.bZ = 21600000L;
        b.ca = 10;
    }
    
    public b(final com.google.android.apps.nexuslauncher.reflection.d.b cd) {
        this.ce = new LinkedList();
        this.cc = new HashSet();
        this.cd = cd;
    }
    
    private void bp() {
        final long timeInMillis = Calendar.getInstance().getTimeInMillis();
        while (this.ce.size() > 0 && (timeInMillis > this.ce.peek().ch + b.bZ || this.ce.peek().cf > b.ca)) {
            this.ce.removeFirst();
        }
    }
    
    public void bl(final List list, final List list2) {
        float n = 1.0f;
        this.bp();
        if (list.size() > 0) {
            n += list.get(0).LQ;
        }
        this.cc.clear();
        final Iterator<f> iterator = list.iterator();
        while (iterator.hasNext()) {
            this.cc.add(iterator.next().LR);
        }
        final ArrayList<String> list3 = new ArrayList<String>();
        for (final c c : this.ce) {
            if (!this.cc.contains(c.cg)) {
                list3.add(c.cg);
            }
        }
        int i = Math.max(list3.size() - b.cb, 0);
        int n2 = 0;
        while (i < list3.size()) {
            final f f = new f(list3.get(i), n2 + n);
            list.add(0, f);
            if (list2 != null) {
                list2.add(0, f);
            }
            ++n2;
            ++i;
        }
    }
    
    public void bn(final ComponentName componentName, final long n, final long n2) {
        this.ce.add(new c(this, componentName, n, n2));
        this.bp();
    }
    
    public void bo() {
        for (final c c : this.ce) {
            ++c.cf;
        }
        this.bp();
    }
    
    void setMaxNumPromotion(final int cb) {
        b.cb = cb;
    }
}
