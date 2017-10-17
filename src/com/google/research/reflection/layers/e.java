// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.util.concurrent.Future;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.Executors;
import java.util.concurrent.ExecutorService;

public class e
{
    public static boolean MA;
    static e Mz;
    private ExecutorService MB;
    private boolean MC;
    private int MD;
    private int My;
    
    static {
        e.MA = false;
    }
    
    private e() {
        this.MC = false;
        this.My = Runtime.getRuntime().availableProcessors() / 2;
        this.MB = Executors.newFixedThreadPool(this.My);
    }
    
    public static e Vq() {
        if (e.Mz == null) {
            e.Mz = new e();
        }
        return e.Mz;
    }
    
    private void Vr(final int n, final c c) {
        int i = 1;
        // monitorenter(this)
        final boolean mc = true;
        try {
            this.MC = mc;
            final ExecutorCompletionService executorCompletionService = new ExecutorCompletionService(this.MB);
            int n2;
            if (n >= this.My) {
                i = (n2 = (int)Math.ceil(n / this.My));
            }
            else {
                n2 = i;
            }
            i = this.My;
            i = Math.min(i, n);
            this.MD = i;
            for (i = 0; i < this.MD; ++i) {
                executorCompletionService.submit(new n(i, n2, n, c));
            }
            i = 0;
            while (i < this.MD) {
                try {
                    final Future take = executorCompletionService.take();
                    try {
                        take.get();
                        ++i;
                    }
                    catch (InterruptedException ex) {
                        ex.printStackTrace();
                    }
                    catch (ExecutionException ex2) {
                        System.err.println(new StringBuilder(48).append("threadCount: ").append(this.MD).append(" for length: ").append(n).toString());
                        ex2.printStackTrace();
                    }
                    finally {
                    }
                    // monitorexit(this)
                }
                catch (InterruptedException ex3) {}
                catch (ExecutionException ex4) {}
            }
            this.MC = false;
        }
        finally {}
    }
    
    public void Vp(final int n, final c c) {
        int i = 0;
        if (e.MA && !this.MC && n != 1) {
            this.Vr(n, c);
        }
        else {
            while (i < n) {
                c.Vo(i);
                ++i;
            }
        }
    }
}
