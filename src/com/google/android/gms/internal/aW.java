// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Process;

class aw implements Runnable
{
    final /* synthetic */ as rY;
    final /* synthetic */ Runnable rZ;
    
    aw(final as ry, final Runnable rz) {
        this.rY = ry;
        this.rZ = rz;
    }
    
    public void run() {
        Process.setThreadPriority(10);
        this.rZ.run();
    }
}
