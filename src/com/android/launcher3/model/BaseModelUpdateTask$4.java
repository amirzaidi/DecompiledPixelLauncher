// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.LauncherModel$Callbacks;
import com.android.launcher3.util.MultiHashMap;
import com.android.launcher3.LauncherModel$CallbackTask;

final class BaseModelUpdateTask$4 implements LauncherModel$CallbackTask
{
    final /* synthetic */ BaseModelUpdateTask this$0;
    final /* synthetic */ MultiHashMap val$widgets;
    
    BaseModelUpdateTask$4(final BaseModelUpdateTask this$0, final MultiHashMap val$widgets) {
        this.this$0 = this$0;
        this.val$widgets = val$widgets;
    }
    
    public void execute(final LauncherModel$Callbacks launcherModel$Callbacks) {
        launcherModel$Callbacks.bindAllWidgets(this.val$widgets);
    }
}
