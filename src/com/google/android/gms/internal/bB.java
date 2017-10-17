// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Process;

class bb implements Runnable
{
    private final Runnable tV;
    private final int tW;
    
    public bb(final Runnable tv, final int tw) {
        this.tV = tv;
        this.tW = tw;
    }
    
    public void run() {
        Process.setThreadPriority(this.tW);
        this.tV.run();
    }
}
