// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.Executors;
import java.util.concurrent.ExecutorService;

public abstract class bf
{
    private static final ExecutorService uc;
    
    static {
        uc = Executors.newFixedThreadPool(2, new aN("GAC_Executor"));
    }
    
    public static ExecutorService ys() {
        return bf.uc;
    }
}
