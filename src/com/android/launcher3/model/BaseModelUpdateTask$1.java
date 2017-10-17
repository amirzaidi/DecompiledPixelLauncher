// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.os.UserHandle;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.AllAppsList;
import com.android.launcher3.LauncherModel$ModelUpdateTask;
import com.android.launcher3.LauncherModel$CallbackTask;
import com.android.launcher3.LauncherModel$Callbacks;

final class BaseModelUpdateTask$1 implements Runnable
{
    final /* synthetic */ BaseModelUpdateTask this$0;
    final /* synthetic */ LauncherModel$Callbacks val$callbacks;
    final /* synthetic */ LauncherModel$CallbackTask val$task;
    
    BaseModelUpdateTask$1(final BaseModelUpdateTask this$0, final LauncherModel$Callbacks val$callbacks, final LauncherModel$CallbackTask val$task) {
        this.this$0 = this$0;
        this.val$callbacks = val$callbacks;
        this.val$task = val$task;
    }
    
    public void run() {
        final LauncherModel$Callbacks callback = this.this$0.mModel.getCallback();
        if (this.val$callbacks == callback && callback != null) {
            this.val$task.execute(this.val$callbacks);
        }
    }
}
