// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.BgDataModel;

final class LauncherModel$BaseModelUpdateTask$1 implements Runnable
{
    final /* synthetic */ LauncherModel$BaseModelUpdateTask this$1;
    final /* synthetic */ LauncherModel$Callbacks val$callbacks;
    final /* synthetic */ LauncherModel$CallbackTask val$task;
    
    LauncherModel$BaseModelUpdateTask$1(final LauncherModel$BaseModelUpdateTask this$1, final LauncherModel$Callbacks val$callbacks, final LauncherModel$CallbackTask val$task) {
        this.this$1 = this$1;
        this.val$callbacks = val$callbacks;
        this.val$task = val$task;
    }
    
    public void run() {
        final LauncherModel$Callbacks callback = this.this$1.mModel.getCallback();
        if (this.val$callbacks == callback && callback != null) {
            this.val$task.execute(this.val$callbacks);
        }
    }
}
