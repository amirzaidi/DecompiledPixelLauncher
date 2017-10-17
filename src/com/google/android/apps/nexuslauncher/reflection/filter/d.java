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
import com.google.android.apps.nexuslauncher.reflection.a.b;
import java.util.HashSet;

public class d
{
    private static long x;
    private static int y;
    private static int z;
    private final HashSet A;
    private final b B;
    private final LinkedList C;
    
    static {
        d.z = 1;
        d.x = 21600000L;
        d.y = 10;
    }
    
    public d(final b b) {
        this.C = new LinkedList();
        this.A = new HashSet();
        this.B = b;
    }
    
    private void z() {
        final long timeInMillis = Calendar.getInstance().getTimeInMillis();
        while (this.C.size() > 0 && (timeInMillis > this.C.peek().F + d.x || this.C.peek().D > d.y)) {
            this.C.removeFirst();
        }
    }
    
    public void n(final List list, final List list2) {
        float n = 1.0f;
        this.z();
        if (list.size() > 0) {
            n += list.get(0).MK;
        }
        this.A.clear();
        final LinkedList<f> list3 = new LinkedList<f>();
        int i = Math.max(this.C.size() - d.z, 0);
        int n2 = 0;
        while (i < this.C.size()) {
            this.A.add(((e)this.C.get(i)).E);
            final f f = new f(this.C.get(i).E, n2 + n);
            list3.add(0, (Object)f);
            if (list2 != null) {
                list2.add(0, f);
            }
            ++n2;
            ++i;
        }
        for (final f f2 : list) {
            if (!this.A.contains(f2.ML)) {
                list3.add((Object)f2);
            }
        }
        list.clear();
        list.addAll(list3);
    }
    
    void setMaxNumPromotion(final int z) {
        d.z = z;
    }
    
    public void x() {
        for (final e e : this.C) {
            ++e.D;
        }
        this.z();
    }
    
    public void y(final ComponentName componentName, final long n, final long n2) {
        this.C.add(new e(this, componentName, n, n2));
        this.z();
    }
}
