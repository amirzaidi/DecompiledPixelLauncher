// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Process;

class bh implements Runnable
{
    private final Runnable tP;
    private final int tQ;
    
    public bh(final Runnable tp, final int tq) {
        this.tP = tp;
        this.tQ = tq;
    }
    
    public void run() {
        Process.setThreadPriority(this.tQ);
        this.tP.run();
    }
}
