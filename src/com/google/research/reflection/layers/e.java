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
    static e Nt;
    public static boolean Nu;
    private int Ns;
    private ExecutorService Nv;
    private boolean Nw;
    private int Nx;
    
    static {
        e.Nu = false;
    }
    
    private e() {
        this.Nw = false;
        this.Ns = Runtime.getRuntime().availableProcessors() / 2;
        this.Nv = Executors.newFixedThreadPool(this.Ns);
    }
    
    private void Ud(final int n, final c c) {
        int i = 1;
        // monitorenter(this)
        final boolean nw = true;
        try {
            this.Nw = nw;
            final ExecutorCompletionService executorCompletionService = new ExecutorCompletionService(this.Nv);
            int n2;
            if (n >= this.Ns) {
                i = (n2 = (int)Math.ceil(n / this.Ns));
            }
            else {
                n2 = i;
            }
            i = this.Ns;
            i = Math.min(i, n);
            this.Nx = i;
            for (i = 0; i < this.Nx; ++i) {
                executorCompletionService.submit(new n(i, n2, n, c));
            }
            i = 0;
            while (i < this.Nx) {
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
                        System.err.println(new StringBuilder(48).append("threadCount: ").append(this.Nx).append(" for length: ").append(n).toString());
                        ex2.printStackTrace();
                    }
                    finally {
                    }
                    // monitorexit(this)
                }
                catch (InterruptedException ex3) {}
                catch (ExecutionException ex4) {}
            }
            this.Nw = false;
        }
        finally {}
    }
    
    public static e getInstance() {
        if (e.Nt == null) {
            e.Nt = new e();
        }
        return e.Nt;
    }
    
    public void Uc(final int n, final c c) {
        int i = 0;
        if (e.Nu && !this.Nw && n != 1) {
            this.Ud(n, c);
        }
        else {
            while (i < n) {
                c.Ub(i);
                ++i;
            }
        }
    }
}
