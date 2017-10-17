// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import java.util.HashSet;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;

public class i
{
    private static final i ml;
    private final ReadWriteLock mi;
    private final Set mj;
    private final Map mk;
    private final a mm;
    private final Map mn;
    private final Map mo;
    
    static {
        ml = new i();
    }
    
    private i() {
        this.mi = new ReentrantReadWriteLock();
        this.mo = new HashMap();
        this.mn = new HashMap();
        this.mj = new HashSet();
        this.mk = new HashMap();
        this.mm = f.lQ;
    }
}
