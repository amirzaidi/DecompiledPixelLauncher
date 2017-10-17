// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.filter;

import java.util.Iterator;
import java.util.ArrayList;
import com.google.research.reflection.predictor.f;
import java.util.List;
import java.util.Calendar;
import java.util.LinkedList;
import java.util.HashSet;
import android.content.ComponentName;

class c
{
    public int cf;
    public String cg;
    public long ch;
    final /* synthetic */ b ci;
    
    public c(final b ci, final ComponentName componentName, final long n, final long ch) {
        this.ci = ci;
        this.cg = ci.cd.aY(componentName, n);
        this.ch = ch;
        this.cf = 0;
    }
}
