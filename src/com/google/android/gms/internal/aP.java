// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Process;

class ap implements Runnable
{
    final /* synthetic */ am sb;
    final /* synthetic */ Runnable sc;
    
    ap(final am sb, final Runnable sc) {
        this.sb = sb;
        this.sc = sc;
    }
    
    public void run() {
        Process.setThreadPriority(10);
        this.sc.run();
    }
}
