// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.MultiHashMap;

final class LauncherModel$8 implements Runnable
{
    final /* synthetic */ LauncherModel this$0;
    final /* synthetic */ LauncherModel$Callbacks val$callbacks;
    final /* synthetic */ MultiHashMap val$widgets;
    
    LauncherModel$8(final LauncherModel this$0, final LauncherModel$Callbacks val$callbacks, final MultiHashMap val$widgets) {
        this.this$0 = this$0;
        this.val$callbacks = val$callbacks;
        this.val$widgets = val$widgets;
    }
    
    public void run() {
        final LauncherModel$Callbacks callback = this.this$0.getCallback();
        if (this.val$callbacks == callback && callback != null) {
            this.val$callbacks.bindAllWidgets(this.val$widgets);
        }
    }
}
