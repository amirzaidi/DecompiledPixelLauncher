// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.view.View;

final class n implements Runnable
{
    final /* synthetic */ QsbBlockerView ag;
    final /* synthetic */ View ah;
    
    n(final QsbBlockerView ag, final View ah) {
        this.ag = ag;
        this.ah = ah;
    }
    
    public void run() {
        this.ag.removeView(this.ah);
    }
}
