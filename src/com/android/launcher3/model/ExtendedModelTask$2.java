// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.LauncherModel$Callbacks;
import com.android.launcher3.util.MultiHashMap;
import com.android.launcher3.LauncherModel$CallbackTask;

final class ExtendedModelTask$2 implements LauncherModel$CallbackTask
{
    final /* synthetic */ ExtendedModelTask this$0;
    final /* synthetic */ MultiHashMap val$shortcutMapCopy;
    
    ExtendedModelTask$2(final ExtendedModelTask this$0, final MultiHashMap val$shortcutMapCopy) {
        this.this$0 = this$0;
        this.val$shortcutMapCopy = val$shortcutMapCopy;
    }
    
    public void execute(final LauncherModel$Callbacks launcherModel$Callbacks) {
        launcherModel$Callbacks.bindDeepShortcutMap(this.val$shortcutMapCopy);
    }
}
