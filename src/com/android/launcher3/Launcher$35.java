// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.ArrayList;

final class Launcher$35 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ ArrayList val$widgets;
    
    Launcher$35(final Launcher this$0, final ArrayList val$widgets) {
        this.this$0 = this$0;
        this.val$widgets = val$widgets;
    }
    
    public void run() {
        this.this$0.bindWidgetsRestored(this.val$widgets);
    }
}
