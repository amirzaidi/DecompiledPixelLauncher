// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;
import android.view.accessibility.AccessibilityManager;

final class DropTargetBar$1 implements Runnable
{
    final /* synthetic */ DropTargetBar this$0;
    
    DropTargetBar$1(final DropTargetBar this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        AlphaUpdateListener.updateVisibility((View)this.this$0, ((AccessibilityManager)this.this$0.getContext().getSystemService("accessibility")).isEnabled());
    }
}
