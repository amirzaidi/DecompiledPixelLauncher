// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.Executors;
import java.util.concurrent.ExecutorService;

public abstract class bl
{
    private static final ExecutorService tW;
    
    static {
        tW = Executors.newFixedThreadPool(2, new aT("GAC_Executor"));
    }
    
    public static ExecutorService yt() {
        return bl.tW;
    }
}
