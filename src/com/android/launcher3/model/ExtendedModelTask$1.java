// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.LauncherModel$Callbacks;
import android.os.UserHandle;
import java.util.ArrayList;
import com.android.launcher3.LauncherModel$CallbackTask;

final class ExtendedModelTask$1 implements LauncherModel$CallbackTask
{
    final /* synthetic */ ExtendedModelTask this$0;
    final /* synthetic */ ArrayList val$removedShortcuts;
    final /* synthetic */ ArrayList val$updatedShortcuts;
    final /* synthetic */ UserHandle val$user;
    
    ExtendedModelTask$1(final ExtendedModelTask this$0, final ArrayList val$updatedShortcuts, final ArrayList val$removedShortcuts, final UserHandle val$user) {
        this.this$0 = this$0;
        this.val$updatedShortcuts = val$updatedShortcuts;
        this.val$removedShortcuts = val$removedShortcuts;
        this.val$user = val$user;
    }
    
    public void execute(final LauncherModel$Callbacks launcherModel$Callbacks) {
        launcherModel$Callbacks.bindShortcutsChanged(this.val$updatedShortcuts, this.val$removedShortcuts, this.val$user);
    }
}
