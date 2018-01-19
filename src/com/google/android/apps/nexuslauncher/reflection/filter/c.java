// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.filter;

import java.util.Iterator;
import java.util.Collection;
import com.google.research.reflection.predictor.f;
import java.util.List;
import java.util.Calendar;
import java.util.LinkedList;
import java.util.HashSet;
import android.content.ComponentName;

class c
{
    final /* synthetic */ b A;
    public int x;
    public String y;
    public long z;
    
    public c(final b a, final ComponentName componentName, final long n, final long z) {
        this.A = a;
        this.y = a.v.ap(componentName, n);
        this.z = z;
        this.x = 0;
    }
}
